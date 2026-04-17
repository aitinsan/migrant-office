import 'package:equatable/equatable.dart';
import 'failures/app_failures.dart';

/// Class for wrapping result of a function so it can return 2 values.
///
/// Commonly used to get rid of try..catch clauses and return either failure
/// object or success object (or void if no object return needed).
///
/// In functions/methods where you need to return Result object use:
///
/// [Result.success] or [SuccessResult] if function/method was successfully completed
/// and return value inside this constructor.
///
/// [Result.failure] or [FailureResult] if function/method has ended with failure.
/// You can pass failure object into this constructor to distinct error type in
/// outer functions/methods.
///
/// In functions/methods where you receive [Result] object use pattern matching
/// to define behaviours depending on the outcome.
/// Example: folding result
/// ```
/// final newResult = switch (result) {
///   Success(:final value) => 1,
///   Failure(:final failure) => 0,
/// };
/// ```
sealed class Result<F, V> extends Equatable {
  const Result();

  const factory Result.success(V value) = SuccessResult;
  const factory Result.failure(F failure) = FailureResult;

  /// A method that map success value to other type when result is success.
  /// Returns updated instance of [Result].
  Result<F, V2> flatMapSuccess<V2>(V2 Function(V value) mapTo) =>
      switch (this) {
        SuccessResult(:final value) => Result.success(mapTo(value)),
        FailureResult(:final failure) => Result.failure(failure),
      };

  /// A method that map failure value to other type when result is failure.
  /// Returns updated instance of [Result].
  Result<F2, V> flatMapFailure<F2>(F2 Function(F failure) mapTo) =>
      switch (this) {
        SuccessResult(:final value) => Result.success(value),
        FailureResult(:final failure) => Result.failure(mapTo(failure)),
      };

  /// A method that map success value to other type when result is success.
  /// Returns mapped value or null.
  V2? mapSuccess<V2>(V2 Function(V value) mapTo) => switch (this) {
    SuccessResult(:final value) => mapTo(value),
    _ => null,
  };

  /// A method that map failure value to other type when result is failure.
  /// Returns mapped value or null.
  F2? mapFailure<F2>(F2 Function(F failure) mapTo) => switch (this) {
    FailureResult(:final failure) => mapTo(failure),
    _ => null,
  };
}

/// A subclass of [Result] representing a successful operation
/// with a value of type V.
final class SuccessResult<F, V> extends Result<F, V> {
  const SuccessResult(this.value);

  final V value;

  static const empty = SuccessResult<AppFailure, Unit>(Unit());

  @override
  List<Object?> get props => [value];
}

/// A subclass of [Result] representing a failed operation
/// with a value of type F.
final class FailureResult<F, V> extends Result<F, V> {
  const FailureResult(this.failure);

  final F failure;

  @override
  List<Object?> get props => [failure];
}

/// It's used for empty successful result.
/// You can use [SuccessResult.empty] in general cases.
class Unit {
  const Unit();
}
