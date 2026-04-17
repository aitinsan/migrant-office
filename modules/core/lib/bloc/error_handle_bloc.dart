import 'package:core/core.dart';
import 'package:flutter/foundation.dart';

abstract class ErrorHandleBloc<E, S> extends Bloc<dynamic, S> {
  ErrorHandleBloc(super.initialState) {
    on<_ErrorEvent>((event, emit) => emit(onErrorState));
  }

  /// State по умолчанию, который выкидывается в случае возникновения необработанной или глобальной ошибки
  S get onErrorState => state;

  void Function(AppFailure failure)? onRetry;

  void Function(AppFailure failure)? onPopError;

  @mustCallSuper
  @override
  void onError(Object error, StackTrace stackTrace) {
    super.add(_ErrorEvent());
    super.onError(error, stackTrace);
  }

  /// переопределяем для строгой типизации параметра метода dynamic => E
  @override
  void add(covariant E event) {
    super.add(event);
  }
}

class _ErrorEvent {}
