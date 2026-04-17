part of 'value_bloc.dart';

@freezed
class ValueEvent<T> with _$ValueEvent {
  const factory ValueEvent.set(T? value) = _Set;
}
