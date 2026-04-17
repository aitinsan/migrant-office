part of 'fetch_bloc.dart';

sealed class FetchEvent extends Equatable {
  const FetchEvent();
}

final class FetchDataFetchEvent extends FetchEvent {
  const FetchDataFetchEvent();

  @override
  List<Object?> get props => [];
}

final class RetryFetchEvent extends FetchEvent {
  const RetryFetchEvent();

  @override
  List<Object?> get props => [];
}
