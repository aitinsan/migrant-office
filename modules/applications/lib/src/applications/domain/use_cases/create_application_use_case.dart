import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

abstract interface class CreateApplicationUseCase {
  Future<Result<AppFailure, void>> invoke(
    CreateApplicationUseCaseParams params,
  );
}

class CreateApplicationUseCaseParams extends Equatable {
  const CreateApplicationUseCaseParams({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.pan,
  });

  final String firstName;
  final String lastName;
  final String phone;
  final String pan;

  @override
  List<Object?> get props => [firstName, lastName, phone, pan];
}
