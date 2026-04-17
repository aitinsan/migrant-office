part of 'auth_bloc.dart';

/// {@template authentication_state}
/// AuthenticationState.
/// {@endtemplate}
sealed class AuthState extends _$AuthStateBase {
  /// {@macro authentication_state}
  const AuthState({required super.isAuthenticated});

  /// Idling state
  /// {@macro authentication_state}
  const factory AuthState.idle({
    required bool isAuthenticated,
    AppFailure? failure,
  }) = AuthState$Idle;

  /// Processing
  /// {@macro authentication_state}
  const factory AuthState.processing({
    required bool isAuthenticated,
  }) = AuthState$Processing;
}

/// Idling state
final class AuthState$Idle extends AuthState with _$AuthState {
  const AuthState$Idle({
    required super.isAuthenticated,
    this.failure,
  });

  @override
  final AppFailure? failure;
}

/// Processing
final class AuthState$Processing extends AuthState with _$AuthState {
  const AuthState$Processing({
    required super.isAuthenticated,
  });

  @override
  AppFailure? get failure => null;
}

base mixin _$AuthState on AuthState {}

/// Pattern matching for [AuthState].
typedef AuthStateMatch<R, S extends AuthState> = R Function(S state);

@immutable
abstract base class _$AuthStateBase {
  const _$AuthStateBase({required this.isAuthenticated});

  @nonVirtual
  final bool isAuthenticated;

  abstract final AppFailure? failure;

  bool get hasError => failure != null;

  bool get isProcessing => this is AuthState$Processing;

  bool get isIdling => !isProcessing;

  @override
  String toString() {
    final buffer = StringBuffer()
      ..write('AuthenticationState{')
      ..write('isAuthenticated: $isAuthenticated, ');
    if (failure != null) buffer.write('error: $failure, ');
    buffer.write('}');
    return buffer.toString();
  }
}
