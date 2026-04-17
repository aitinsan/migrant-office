import 'package:applications/src/applications/domain/models/agent_profile.dart';
import 'package:applications/src/applications/domain/models/application.dart';
import 'package:applications/src/applications/domain/models/applications_page.dart';
import 'package:applications/src/applications/domain/use_cases/delete_application_use_case.dart';
import 'package:applications/src/applications/domain/use_cases/get_agent_profile_use_case.dart';
import 'package:applications/src/applications/domain/use_cases/get_applications_use_case.dart';
import 'package:applications/src/applications/domain/use_cases/get_onboarding_app_link_use_case.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

part 'applications_event.dart';
part 'applications_state.dart';

final class ApplicationsBloc
    extends BaseBloc<ApplicationsEvent, ApplicationsState> {
  ApplicationsBloc({
    required GetApplicationsUseCase getApplicationsUseCase,
    required GetAgentProfileUseCase getAgentProfileUseCase,
    required GetOnboardingAppLinkUseCase getOnboardingAppLinkUseCase,
    required DeleteApplicationUseCase deleteApplicationUseCase,
    required ApplicationsState initialState,
  }) : _getApplicationsUseCase = getApplicationsUseCase,
       _getAgentProfileUseCase = getAgentProfileUseCase,
       _getOnboardingAppLinkUseCase = getOnboardingAppLinkUseCase,
       _deleteApplicationUseCase = deleteApplicationUseCase,
       super(initialState) {
    on<ApplicationsEvent>(
      (event, emit) => switch (event) {
        ApplicationsEvent$LoadInitial() => _onLoadInitial(event, emit),
        ApplicationsEvent$LoadNext() => _onLoadNext(event, emit),
        ApplicationsEvent$ShareLinkRequested() => _onShareLinkRequested(emit),
        ApplicationsEvent$LoadProfile() => _onLoadProfile(emit),
        ApplicationsEvent$DeleteRequested() => _onDeleteRequested(event, emit),
        _ApplicationsEvent$UpdateState() => _onUpdateState(event, emit),
      },
    );
  }

  final GetApplicationsUseCase _getApplicationsUseCase;
  final GetAgentProfileUseCase _getAgentProfileUseCase;
  final GetOnboardingAppLinkUseCase _getOnboardingAppLinkUseCase;
  final DeleteApplicationUseCase _deleteApplicationUseCase;

  ApplicationsState _mapResultToState({
    required Result<AppFailure, ApplicationsPage> result,
    required ApplicationsState baseState,
    required int limit,
  }) {
    return switch (result) {
      SuccessResult(:final value) => ApplicationsState$Idle(
        applications: baseState.applications,
        total: value.total,
        nextCursor: value.nextCursor,
        limit: limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
      FailureResult(:final failure) => ApplicationsState$Idle(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        failure: failure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
    };
  }

  ApplicationsState _withShareLinkState({
    required ApplicationsState baseState,
    required bool isShareLinkProcessing,
    String? shareLink,
    AppFailure? shareLinkFailure,
  }) {
    return switch (baseState) {
      ApplicationsState$Processing() => ApplicationsState$Processing(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        isShareLinkProcessing: isShareLinkProcessing,
        shareLink: shareLink,
        shareLinkFailure: shareLinkFailure,
      ),
      ApplicationsState$Idle() => ApplicationsState$Idle(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        failure: baseState.failure,
        isShareLinkProcessing: isShareLinkProcessing,
        shareLink: shareLink,
        shareLinkFailure: shareLinkFailure,
      ),
      _ => ApplicationsState$Idle(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        failure: baseState.failure,
        isShareLinkProcessing: isShareLinkProcessing,
        shareLink: shareLink,
        shareLinkFailure: shareLinkFailure,
      ),
    };
  }

  Future<void> _onLoadInitial(
    ApplicationsEvent$LoadInitial event,
    Emitter<ApplicationsState> emit,
  ) async {
    if (state.isProcessing) return;

    final limit = event.limit ?? state.limit;
    emit(
      ApplicationsState$Processing(
        applications: const [],
        total: 0,
        nextCursor: null,
        limit: limit,
        agentProfile: state.agentProfile,
        isProfileLoading: state.isProfileLoading,
        profileFailure: state.profileFailure,
        isShareLinkProcessing: state.isShareLinkProcessing,
        shareLink: state.shareLink,
        shareLinkFailure: state.shareLinkFailure,
      ),
    );

    final result = await _getApplicationsUseCase.invoke(
      GetApplicationsUseCaseParams(limit: limit),
    );

    final nextState = _mapResultToState(
      result: result,
      baseState: ApplicationsState$Idle(
        applications: result.mapSuccess((v) => v.applications) ?? const [],
        total: result.mapSuccess((v) => v.total) ?? 0,
        nextCursor: result.mapSuccess((v) => v.nextCursor ?? ''),
        limit: limit,
        agentProfile: state.agentProfile,
        isProfileLoading: state.isProfileLoading,
        profileFailure: state.profileFailure,
        isShareLinkProcessing: state.isShareLinkProcessing,
        shareLink: state.shareLink,
        shareLinkFailure: state.shareLinkFailure,
      ),
      limit: limit,
    );
    emit(nextState);
  }

  Future<void> _onLoadNext(
    ApplicationsEvent$LoadNext event,
    Emitter<ApplicationsState> emit,
  ) async {
    if (state.isProcessing || state.nextCursor == null) return;

    final limit = event.limit ?? state.limit;
    emit(
      ApplicationsState$Processing(
        applications: state.applications,
        total: state.total,
        nextCursor: state.nextCursor,
        limit: limit,
        agentProfile: state.agentProfile,
        isProfileLoading: state.isProfileLoading,
        profileFailure: state.profileFailure,
        isShareLinkProcessing: state.isShareLinkProcessing,
        shareLink: state.shareLink,
        shareLinkFailure: state.shareLinkFailure,
      ),
    );

    final result = await _getApplicationsUseCase.invoke(
      GetApplicationsUseCaseParams(limit: limit, cursor: state.nextCursor),
    );

    final mergedApplications =
        result.mapSuccess((v) => [...state.applications, ...v.applications]) ??
        state.applications;

    final nextState = _mapResultToState(
      result: result,
      baseState: ApplicationsState$Idle(
        applications: mergedApplications,
        total: result.mapSuccess((v) => v.total) ?? 1,
        nextCursor: result.mapSuccess((v) => v.nextCursor ?? ''),
        limit: limit,
        agentProfile: state.agentProfile,
        isProfileLoading: state.isProfileLoading,
        profileFailure: state.profileFailure,
        isShareLinkProcessing: state.isShareLinkProcessing,
        shareLink: state.shareLink,
        shareLinkFailure: state.shareLinkFailure,
      ),
      limit: limit,
    );
    emit(nextState);
  }

  Future<void> _onShareLinkRequested(Emitter<ApplicationsState> emit) async {
    if (state.isShareLinkProcessing) return;

    emit(
      _withShareLinkState(
        baseState: state,
        isShareLinkProcessing: true,
        shareLink: null,
        shareLinkFailure: null,
      ),
    );

    final result = await _getOnboardingAppLinkUseCase.invoke(
      const EmptyUseCaseParams(),
    );

    switch (result) {
      case SuccessResult(:final value):
        emit(
          _withShareLinkState(
            baseState: state,
            isShareLinkProcessing: false,
            shareLink: value,
            shareLinkFailure: null,
          ),
        );
      case FailureResult(:final failure):
        emit(
          _withShareLinkState(
            baseState: state,
            isShareLinkProcessing: false,
            shareLink: null,
            shareLinkFailure: failure,
          ),
        );
    }
  }

  ApplicationsState _withProfileState({
    required ApplicationsState baseState,
    required bool isProfileLoading,
    AgentProfile? agentProfile,
    AppFailure? profileFailure,
  }) {
    return switch (baseState) {
      ApplicationsState$Processing() => ApplicationsState$Processing(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: agentProfile ?? baseState.agentProfile,
        isProfileLoading: isProfileLoading,
        profileFailure: profileFailure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
      ApplicationsState$Idle() => ApplicationsState$Idle(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: agentProfile ?? baseState.agentProfile,
        isProfileLoading: isProfileLoading,
        profileFailure: profileFailure,
        failure: baseState.failure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
      _ => ApplicationsState$Idle(
        applications: baseState.applications,
        total: baseState.total,
        nextCursor: baseState.nextCursor,
        limit: baseState.limit,
        agentProfile: agentProfile ?? baseState.agentProfile,
        isProfileLoading: isProfileLoading,
        profileFailure: profileFailure,
        failure: baseState.failure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
    };
  }

  ApplicationsState _withApplicationsState({
    required ApplicationsState baseState,
    required List<Application> applications,
    int? total,
    String? nextCursor,
    AppFailure? failure,
  }) {
    final updatedTotal = total ?? baseState.total;
    final updatedCursor = nextCursor ?? baseState.nextCursor;

    return switch (baseState) {
      ApplicationsState$Processing() => ApplicationsState$Processing(
        applications: applications,
        total: updatedTotal,
        nextCursor: updatedCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
      ApplicationsState$Idle() => ApplicationsState$Idle(
        applications: applications,
        total: updatedTotal,
        nextCursor: updatedCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        failure: failure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
      _ => ApplicationsState$Idle(
        applications: applications,
        total: updatedTotal,
        nextCursor: updatedCursor,
        limit: baseState.limit,
        agentProfile: baseState.agentProfile,
        isProfileLoading: baseState.isProfileLoading,
        profileFailure: baseState.profileFailure,
        failure: failure,
        isShareLinkProcessing: baseState.isShareLinkProcessing,
        shareLink: baseState.shareLink,
        shareLinkFailure: baseState.shareLinkFailure,
      ),
    };
  }

  Future<void> _onLoadProfile(Emitter<ApplicationsState> emit) async {
    if (state.isProfileLoading) return;

    emit(
      _withProfileState(
        baseState: state,
        isProfileLoading: true,
        profileFailure: null,
      ),
    );

    final result = await _getAgentProfileUseCase.invoke(
      const EmptyUseCaseParams(),
    );

    switch (result) {
      case SuccessResult(:final value):
        emit(
          _withProfileState(
            baseState: state,
            isProfileLoading: false,
            agentProfile: value,
            profileFailure: null,
          ),
        );
      case FailureResult(:final failure):
        emit(
          _withProfileState(
            baseState: state,
            isProfileLoading: false,
            agentProfile: null,
            profileFailure: failure,
          ),
        );
    }
  }

  Future<void> _onDeleteRequested(
    ApplicationsEvent$DeleteRequested event,
    Emitter<ApplicationsState> emit,
  ) async {
    if (state.isProcessing) return;

    final result = await _deleteApplicationUseCase.invoke(
      DeleteApplicationUseCaseParams(applicationId: event.applicationId),
    );

    switch (result) {
      case SuccessResult():
        final updatedApplications =
            state.applications
                .where((application) => application.id != event.applicationId)
                .toList();
        final removedCount = state.applications.length - updatedApplications.length;
        final updatedTotal =
            removedCount > 0 && state.total > 0
                ? state.total - removedCount
                : state.total;
        emit(
          _withApplicationsState(
            baseState: state,
            applications: updatedApplications,
            total: updatedTotal,
            failure: null,
          ),
        );
      case FailureResult(:final failure):
        emit(
          _withApplicationsState(
            baseState: state,
            applications: state.applications,
            failure: failure,
          ),
        );
    }
  }

  void _onUpdateState(
    _ApplicationsEvent$UpdateState event,
    Emitter<ApplicationsState> emit,
  ) {
    emit(event.state);
  }
}
