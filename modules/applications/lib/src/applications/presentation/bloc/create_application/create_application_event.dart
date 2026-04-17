part of 'create_application_bloc.dart';

sealed class CreateApplicationEvent extends Equatable {
  const CreateApplicationEvent();
}

final class CreateApplicationEvent$Submit extends CreateApplicationEvent {
  const CreateApplicationEvent$Submit({
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

final class CreateApplicationEvent$Reset extends CreateApplicationEvent {
  const CreateApplicationEvent$Reset();

  @override
  List<Object?> get props => [];
}
