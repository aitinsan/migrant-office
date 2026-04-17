import 'package:equatable/equatable.dart';

class EquatableArray extends Equatable {
  const EquatableArray(this.elements);

  const EquatableArray.empty() : elements = const [];

  final List<Object?> elements;

  @override
  List<Object?> get props => elements;
}
