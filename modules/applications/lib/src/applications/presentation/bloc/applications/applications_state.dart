part of 'applications_bloc.dart';

sealed class ApplicationsState extends _$ApplicationsStateBase {
  const ApplicationsState({
    required super.applications,
    required super.total,
    required super.nextCursor,
    required super.limit,
    required super.agentProfile,
    required super.isProfileLoading,
    required super.profileFailure,
    required super.isShareLinkProcessing,
    required super.shareLink,
    required super.shareLinkFailure,
  });

  const factory ApplicationsState.idle({
    required List<Application> applications,
    required int total,
    required String? nextCursor,
    required int limit,
    AgentProfile? agentProfile,
    bool isProfileLoading,
    AppFailure? profileFailure,
    AppFailure? failure,
    bool isShareLinkProcessing,
    String? shareLink,
    AppFailure? shareLinkFailure,
  }) = ApplicationsState$Idle;

  const factory ApplicationsState.processing({
    required List<Application> applications,
    required int total,
    required String? nextCursor,
    required int limit,
    AgentProfile? agentProfile,
    bool isProfileLoading,
    AppFailure? profileFailure,
    bool isShareLinkProcessing,
    String? shareLink,
    AppFailure? shareLinkFailure,
  }) = ApplicationsState$Processing;
}

final class ApplicationsState$Idle extends ApplicationsState
    with _$ApplicationsState {
  const ApplicationsState$Idle({
    required super.applications,
    required super.total,
    required super.nextCursor,
    required super.limit,
    super.agentProfile,
    super.isProfileLoading = false,
    super.profileFailure,
    super.isShareLinkProcessing = false,
    super.shareLink,
    super.shareLinkFailure,
    this.failure,
  });

  @override
  final AppFailure? failure;
}

final class ApplicationsState$Processing extends ApplicationsState
    with _$ApplicationsState {
  const ApplicationsState$Processing({
    required super.applications,
    required super.total,
    required super.nextCursor,
    required super.limit,
    super.agentProfile,
    super.isProfileLoading = false,
    super.profileFailure,
    super.isShareLinkProcessing = false,
    super.shareLink,
    super.shareLinkFailure,
  });

  @override
  AppFailure? get failure => null;
}

base mixin _$ApplicationsState on ApplicationsState {}

typedef ApplicationsStateMatch<R, S extends ApplicationsState> =
    R Function(S state);

@immutable
abstract base class _$ApplicationsStateBase {
  const _$ApplicationsStateBase({
    required this.applications,
    required this.total,
    required this.nextCursor,
    required this.limit,
    required this.agentProfile,
    required this.isProfileLoading,
    required this.profileFailure,
    required this.isShareLinkProcessing,
    required this.shareLink,
    required this.shareLinkFailure,
  });

  @nonVirtual
  final List<Application> applications;

  @nonVirtual
  final int total;

  @nonVirtual
  final String? nextCursor;

  @nonVirtual
  final int limit;

  @nonVirtual
  final AgentProfile? agentProfile;

  @nonVirtual
  final bool isProfileLoading;

  @nonVirtual
  final AppFailure? profileFailure;

  @nonVirtual
  final bool isShareLinkProcessing;

  @nonVirtual
  final String? shareLink;

  @nonVirtual
  final AppFailure? shareLinkFailure;

  abstract final AppFailure? failure;

  bool get hasError => failure != null;

  bool get isProcessing => this is ApplicationsState$Processing;

  bool get isIdling => !isProcessing;

  int get totalPages {
    if (limit <= 0) return 1;
    final pages = (total / limit).ceil();
    return pages <= 0 ? 1 : pages;
  }
}
