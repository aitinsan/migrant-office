import 'package:core/domain/entities/extended_error.dart';
import 'package:flutter/material.dart';

abstract class DataParser<T> {
  // ignore: strict_top_level_inference, type_annotate_public_apis
  T parse(data);
}

class ListParser<T> implements DataParser<List<T>> {
  ListParser(this._converter, {this.forKey});

  final T Function(Map<String, dynamic> data) _converter;
  final String? forKey;

  @override
  // ignore: type_annotate_public_apis
  List<T> parse(data) {
    try {
      return forKey == null
          ? List<T>.from(
              // ignore: avoid_dynamic_calls
              data.map((json) => _converter(json as Map<String, dynamic>)),
            )
          : List<T>.from(
              // ignore: avoid_dynamic_calls
              data[forKey].map(
                (json) => _converter(json as Map<String, dynamic>),
              ),
            );
      // ignore: avoid_catches_without_on_clauses
    } catch (e, s) {
      debugPrint('$e, $s');
      throw const ParseError();
    }
  }
}

class ObjectParser<T> implements DataParser<T> {
  ObjectParser(this._converter);

  final T Function(Map<String, dynamic> data) _converter;

  @override
  // ignore: type_annotate_public_apis
  T parse(data) {
    try {
      return _converter(data as Map<String, dynamic>);
      // ignore: avoid_catches_without_on_clauses
    } catch (e, s) {
      debugPrint('$e, $s');
      throw const ParseError();
    }
  }
}

class RawParser<T> implements DataParser<T> {
  RawParser(this._converter);

  final T Function(String data) _converter;

  @override
  // ignore: type_annotate_public_apis
  T parse(data) {
    try {
      return _converter(data as String);
      // ignore: avoid_catches_without_on_clauses
    } catch (e, s) {
      debugPrint('$e, $s');
      throw const ParseError();
    }
  }
}
