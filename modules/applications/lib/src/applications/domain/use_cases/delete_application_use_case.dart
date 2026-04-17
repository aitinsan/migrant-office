import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

abstract interface class DeleteApplicationUseCase {
  Future<Result<AppFailure, void>> invoke(
    DeleteApplicationUseCaseParams params,
  );
}

class DeleteApplicationUseCaseParams extends Equatable {
  const DeleteApplicationUseCaseParams({required this.applicationId});

  final String applicationId;

  @override
  List<Object?> get props => [applicationId];
}
