import 'dart:async';

import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'fetch_event.dart';
part 'fetch_state.dart';

abstract class FetchBloc<SuccessT, FailureT>
    extends BaseBloc<FetchEvent, FetchState<SuccessT, FailureT>> {
  FetchBloc([super.state = const InitialFetchState()]) {
    _registerEventHandlers();
  }

  @protected
  FutureOr<Result<FailureT, SuccessT>> fetchData();

  @protected
  FutureOr<Result<FailureT, SuccessT>> retry() {
    return fetchData();
  }

  void _registerEventHandlers() {
    on<FetchEvent>((event, emit) async {
      return switch (event) {
        FetchDataFetchEvent() => await _onFetchRequested(emit),
        RetryFetchEvent() => await _onRetry(emit),
      };
    });
  }

  Future<void> _onFetchRequested(Emitter<FetchState<SuccessT, FailureT>> emit) {
    return _executeLoadFlow(fetchData, emit);
  }

  Future<void> _onRetry(Emitter<FetchState<SuccessT, FailureT>> emit) {
    return _executeLoadFlow(retry, emit);
  }

  Future<void> _executeLoadFlow(
    FutureOr<Result<FailureT, SuccessT>> Function() fetchCallback,
    Emitter<FetchState<SuccessT, FailureT>> emit,
  ) async {
    if (state case final LoadedFetchState<SuccessT, FailureT> state) {
      if (state.isLoading) return;

      emit(state.copyWith(isLoading: true));
    }

    if (state is! LoadedFetchState) {
      emit(const InitialFetchState());
    }

    final result = await fetchCallback();
    handleFetchResult(emit, result);
  }

  void handleFetchResult(
    Emitter<FetchState<SuccessT, FailureT>> emit,
    Result<FailureT, SuccessT> result,
  ) {
    emit(_mapResultToState(result));
  }

  FetchState<SuccessT, FailureT> _mapResultToState(
    Result<FailureT, SuccessT> result,
  ) => switch (result) {
    SuccessResult(:final value) => LoadedFetchState(data: value),
    FailureResult(:final failure) => FailureFetchState(failure: failure),
  };
}
