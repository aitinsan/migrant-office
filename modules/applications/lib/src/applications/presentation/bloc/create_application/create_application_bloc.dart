import 'package:applications/src/applications/domain/use_cases/create_application_use_case.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

part 'create_application_event.dart';
part 'create_application_state.dart';

final class CreateApplicationBloc
    extends BaseBloc<CreateApplicationEvent, CreateApplicationState> {
  CreateApplicationBloc({
    required CreateApplicationUseCase createApplicationUseCase,
  }) : _createApplicationUseCase = createApplicationUseCase,
       super(const CreateApplicationState.idle()) {
    on<CreateApplicationEvent>(
      (event, emit) => switch (event) {
        CreateApplicationEvent$Submit() => _onSubmit(event, emit),
        CreateApplicationEvent$Reset() => _onReset(emit),
      },
    );
  }

  final CreateApplicationUseCase _createApplicationUseCase;

  Future<void> _onSubmit(
    CreateApplicationEvent$Submit event,
    Emitter<CreateApplicationState> emit,
  ) async {
    if (state.isProcessing) return;

    emit(const CreateApplicationState.processing());

    final result = await _createApplicationUseCase.invoke(
      CreateApplicationUseCaseParams(
        firstName: event.firstName,
        lastName: event.lastName,
        phone: event.phone,
        pan: event.pan,
      ),
    );

    switch (result) {
      case SuccessResult():
        emit(const CreateApplicationState.success());
      case FailureResult(:final failure):
        emit(CreateApplicationState.failure(failure: failure));
    }
  }

  void _onReset(Emitter<CreateApplicationState> emit) {
    if (state.isIdle) return;
    emit(const CreateApplicationState.idle());
  }
}
