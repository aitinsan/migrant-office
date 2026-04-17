part of 'fetch_bloc.dart';

sealed class FetchState<T, F> extends Equatable {
  const FetchState();

  bool get isFinished => switch (this) {
    LoadedFetchState(isLoading: false) || FailureFetchState() => true,
    _ => false,
  };
}

@immutable
final class InitialFetchState<T, F> extends FetchState<T, F> {
  const InitialFetchState();

  @override
  List<Object?> get props => [];
}

@immutable
final class LoadedFetchState<T, F> extends FetchState<T, F> {
  const LoadedFetchState({required this.data, this.isLoading = false});

  final T data;
  final bool isLoading;

  @override
  List<Object?> get props => [data, isLoading];

  LoadedFetchState<T, F> copyWith({T? data, bool? isLoading}) {
    return LoadedFetchState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

@immutable
final class FailureFetchState<T, F> extends FetchState<T, F> {
  const FailureFetchState({required this.failure});

  final F failure;

  @override
  List<Object?> get props => [failure];
}
