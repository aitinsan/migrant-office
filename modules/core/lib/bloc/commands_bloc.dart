import 'dart:async';

import 'package:core/bloc/base_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class CommandsBloc<E extends Object, S, C extends UiCommand>
    extends BaseBloc<E, S>
    implements CommandsBlocBase<S, C> {
  CommandsBloc(super.initialState);

  late final StreamController<C> _uiCommandsController =
      StreamController.broadcast(onListen: _onStreamListened);

  @override
  Stream<C> get uiCommandsStream => _uiCommandsController.stream;

  bool _isCommandsStreamListenedTo = false;
  final List<C> _commandsToAdd = [];

  void _onStreamListened() {
    /// Если это первый слушатель, то кидаем в стрим все сохраненные ранее
    /// команды в порядке их первоначального вызова
    if (!_isCommandsStreamListenedTo) {
      _isCommandsStreamListenedTo = true;

      if (_commandsToAdd.isEmpty) return;

      for (var i = _commandsToAdd.length - 1; i >= 0; i--) {
        _addCommandToStream(_commandsToAdd[i]);
      }

      _commandsToAdd.clear();
    }
  }

  @protected
  void addUiCommand(C command) {
    /// Если есть хотя бы один слушатель - кидаем команду в стрим.
    /// Если нет - сохраняем ее для пробрасывания в стрим, когда появится первый
    /// слушатель
    if (_isCommandsStreamListenedTo) {
      _addCommandToStream(command);
    } else {
      _commandsToAdd.add(command);
    }
  }

  void _addCommandToStream(C command) {
    final observer = Bloc.observer;

    if (observer is CommandsBlocObserver) {
      observer.onCommand(this, command);
    }
    if (observer is MultiBlocObserver) {
      for (final commandObserver
          in observer.observers.whereType<CommandsBlocObserver>()) {
        commandObserver.onCommand(this, command);
      }
    }
    _uiCommandsController.add(command);
  }

  void _closeStream() {
    if (!_uiCommandsController.isClosed) {
      unawaited(_uiCommandsController.close());
    }
  }

  @mustCallSuper
  @override
  Future<void> close() async {
    _closeStream();
    await super.close();
  }
}

abstract class UiCommand extends Equatable {
  const UiCommand();

  @override
  List<Object?> get props => [];
}

abstract class UiCommandsBase<T extends UiCommand> {
  Stream<T> get uiCommandsStream;
}

@visibleForTesting
abstract class CommandsBlocBase<S, C extends UiCommand> extends BlocBase<S>
    implements UiCommandsBase<C> {
  CommandsBlocBase(super._state);
}

mixin CommandsBlocObserver on BlocObserver {
  void onCommand(Bloc bloc, UiCommand command);
}
