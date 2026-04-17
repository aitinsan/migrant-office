import 'package:core/bloc/base_bloc.dart';
import 'package:core/utils/equatable_array.dart';
import 'package:flutter/material.dart';

/// Миксины, которые упрощают вызов bloc.add"
mixin AddEvent<BlocT extends BaseBloc<EventT, dynamic>, EventT extends Object>
    on StatelessWidget {
  void add(BuildContext context, EventT event) =>
      context.read<BlocT>().add(event);
}

mixin AddEventStateful<
  WidgetT extends StatefulWidget,
  BlocT extends BaseBloc<EventT, dynamic>,
  EventT extends Object
>
    on State<WidgetT> {
  void add(EventT event) => context.read<BlocT>().add(event);
}

/// Функции, которые упрощают сравнивать параметры state в вызовах "buildWhen" и "listenWhen"
/// Параметры должны быть сравниваемыми(equatable)

/// Сравнивает несколько параметров между двумя state
WhenChangedCompanion<T> whenParamsChanged<T>(WhenParamsWrapper<T> wrapper) {
  return (T previous, T current) =>
      EquatableArray(wrapper(previous)) != EquatableArray(wrapper(current));
}

/// Сравнивает один параметр между двумя state
WhenChangedCompanion<T> whenParamChanged<T>(WhenParamWrapper<T> wrapper) {
  return (T previous, T current) => wrapper(previous) != wrapper(current);
}

typedef WhenChangedCompanion<T> = bool Function(T previous, T current);
typedef WhenParamsWrapper<T> = List<Object?> Function(T state);
typedef WhenParamWrapper<T> = Object? Function(T state);
