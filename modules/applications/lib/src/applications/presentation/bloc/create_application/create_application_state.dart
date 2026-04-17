part of 'create_application_bloc.dart';

enum CreateApplicationStatus { idle, processing, success, failure }

class CreateApplicationState extends Equatable {
  const CreateApplicationState._({
    required this.status,
    required this.failure,
  });

  const CreateApplicationState.idle()
    : this._(status: CreateApplicationStatus.idle, failure: null);

  const CreateApplicationState.processing()
    : this._(status: CreateApplicationStatus.processing, failure: null);

  const CreateApplicationState.success()
    : this._(status: CreateApplicationStatus.success, failure: null);

  const CreateApplicationState.failure({required AppFailure failure})
    : this._(status: CreateApplicationStatus.failure, failure: failure);

  final CreateApplicationStatus status;
  final AppFailure? failure;

  bool get isIdle => status == CreateApplicationStatus.idle;

  bool get isProcessing => status == CreateApplicationStatus.processing;

  bool get isSuccess => status == CreateApplicationStatus.success;

  bool get isFailure => status == CreateApplicationStatus.failure;

  @override
  List<Object?> get props => [status, failure];
}
