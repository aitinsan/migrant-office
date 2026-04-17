import 'dart:async';

import 'package:auth/src/auth/domain/use_cases/auth_changes_stream_use_case.dart';
import 'package:auth/src/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:auth/src/auth/domain/use_cases/sign_out_use_case.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

part 'auth_event.dart';
part 'auth_state.dart';

final class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc({
    required SignInUseCase signInUseCase,
    required SignOutUseCase signOutUseCase,
    required AuthChangesStreamUseCase authChangesStreamUseCase,
    required AuthState initialState,
  }) : _signInUseCase = signInUseCase,
       _signOutUseCase = signOutUseCase,
       _authChangesStreamUseCase = authChangesStreamUseCase,
       super(initialState) {
    _authChangesSubscription = _authChangesStreamUseCase
        .invoke(const EmptyUseCaseParams())
        .map(_mapStreamResultToState)
        .map(_AuthEvent$UpdateState.new)
        .listen(add);

    on<AuthEvent>(
      (event, emit) => switch (event) {
        AuthEvent$SignIn() => _onSignIn(event, emit),
        AuthEvent$SignOut() => _onSignOut(event, emit),
        _AuthEvent$UpdateState() => _onUpdateState(event, emit),
      },
    );
  }

  final SignInUseCase _signInUseCase;

  final SignOutUseCase _signOutUseCase;

  final AuthChangesStreamUseCase _authChangesStreamUseCase;

  StreamSubscription<void>? _authChangesSubscription;

  AuthState _mapStreamResultToState(Result<AppFailure, bool> result) {
    return switch (result) {
      SuccessResult(:final value) =>
        value
            ? const AuthState$Idle(isAuthenticated: true)
            : const AuthState$Idle(isAuthenticated: false),
      FailureResult(:final failure) => AuthState$Idle(
        failure: failure,
        isAuthenticated: false,
      ),
    };
  }

  @override
  Future<void> close() async {
    await _authChangesSubscription?.cancel();
    return super.close();
  }

  Future<void> _onSignIn(
    AuthEvent$SignIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState$Processing(isAuthenticated: false));
    final result = await _signInUseCase.invoke(
      SignInUseCaseParams(email: event.email, password: event.password),
    );

    switch (result) {
      case SuccessResult<AppFailure, void>():
        emit(const AuthState$Idle(isAuthenticated: true));
      case FailureResult<AppFailure, void>(:final failure):
        emit(AuthState$Idle(failure: failure, isAuthenticated: false));
    }
  }

  Future<void> _onSignOut(
    AuthEvent$SignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState$Processing(isAuthenticated: false));
    final result = await _signOutUseCase.invoke(EmptyUseCaseParams());

    switch (result) {
      case SuccessResult<AppFailure, void>():
        emit(const AuthState$Idle(isAuthenticated: false));
      case FailureResult<AppFailure, void>(:final failure):
        emit(AuthState$Idle(failure: failure, isAuthenticated: false));
    }
  }

  void _onUpdateState(_AuthEvent$UpdateState event, Emitter<AuthState> emit) {
    emit(event.state);
  }
}
