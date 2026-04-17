import 'dart:async';

import 'package:core/bloc/error_handle_bloc.dart';
import 'package:flutter/cupertino.dart';

export 'package:bloc_concurrency/bloc_concurrency.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S> extends ErrorHandleBloc<E, S> {
  BaseBloc(super.initialState);

  /// Список подписок на стримы (отменяются при закрытии блока)
  @protected
  late final List<StreamSubscription?> subs = [];

  /// Список стрим-контроллеров (закрываются при закрытии блока)
  @protected
  late final List<StreamController?> streamControllers = [];

  /// Выполнить список event'ов
  void addAll(List<E> eventList) {
    for (final e in eventList) {
      add(e);
    }
  }

  @mustCallSuper
  @override
  Future<void> close() {
    for (final e in subs) {
      unawaited(e?.cancel());
    }

    for (final e in streamControllers) {
      unawaited(e?.close());
    }

    return super.close();
  }
}
