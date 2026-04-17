part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();
}

final class AuthEvent$SignIn extends AuthEvent {
  const AuthEvent$SignIn({required this.email, required this.password});

  final String email;

  final String password;
  
  @override
  List<Object?> get props => [email, password];
}

final class AuthEvent$SignOut extends AuthEvent {
  const AuthEvent$SignOut();

  @override
  List<Object?> get props => [];
}

final class _AuthEvent$UpdateState extends AuthEvent {
  const _AuthEvent$UpdateState(this.state);

  final AuthState state;

  @override
  List<Object?> get props => [state];
}
