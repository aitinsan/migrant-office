import 'package:core/bloc/base_bloc.dart';
import 'package:core/bloc/commands_bloc.dart';
import 'package:flutter/foundation.dart';

/// Блок обсервер для слежения всего что находится в блоке
class LoggingBlocObserver extends BlocObserver with CommandsBlocObserver {
  const LoggingBlocObserver();

  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      debugPrint(
        'BLoC is $bloc and current state is ${change.currentState},'
        ' next state is ${change.nextState}',
      );
    }
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) {
      debugPrint(
        '$bloc - event is ${transition.event}'
        ' and state is ${transition.nextState}',
      );
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      debugPrint('Error on $bloc, error is $error, stack trace is $stackTrace');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (kDebugMode) {
      debugPrint('$bloc, event is $event');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onCommand(Bloc bloc, UiCommand command) {
    if (kDebugMode) {
      debugPrint('$bloc, command is $command');
    }
  }
}
