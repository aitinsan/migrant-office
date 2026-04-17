import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_bloc.freezed.dart';
part 'value_event.dart';

class ValueBloc<T> extends Bloc<ValueEvent<T>, T?> {
  ValueBloc({T? initialValue}) : super(initialValue) {
    on<ValueEvent<T>>((event, emit) {
      event.map(set: (setEvent) => onSet(setEvent.value, emit));
    });
  }

  @mustCallSuper
  @protected
  void onSet(T? value, Emitter<T?> emit) {
    emit(value);
  }
}
