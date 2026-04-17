// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ValueEvent<T> {
  T? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? set,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Set<T> value) set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Set<T> value)? set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Set<T> value)? set,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ValueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueEventCopyWith<T, ValueEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueEventCopyWith<T, $Res> {
  factory $ValueEventCopyWith(
    ValueEvent<T> value,
    $Res Function(ValueEvent<T>) then,
  ) = _$ValueEventCopyWithImpl<T, $Res, ValueEvent<T>>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class _$ValueEventCopyWithImpl<T, $Res, $Val extends ValueEvent<T>>
    implements $ValueEventCopyWith<T, $Res> {
  _$ValueEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = freezed}) {
    return _then(
      _value.copyWith(
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as T?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SetImplCopyWith<T, $Res>
    implements $ValueEventCopyWith<T, $Res> {
  factory _$$SetImplCopyWith(
    _$SetImpl<T> value,
    $Res Function(_$SetImpl<T>) then,
  ) = __$$SetImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$SetImplCopyWithImpl<T, $Res>
    extends _$ValueEventCopyWithImpl<T, $Res, _$SetImpl<T>>
    implements _$$SetImplCopyWith<T, $Res> {
  __$$SetImplCopyWithImpl(
    _$SetImpl<T> _value,
    $Res Function(_$SetImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ValueEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = freezed}) {
    return _then(
      _$SetImpl<T>(
        freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as T?,
      ),
    );
  }
}

/// @nodoc

class _$SetImpl<T> implements _Set<T> {
  const _$SetImpl(this.value);

  @override
  final T? value;

  @override
  String toString() {
    return 'ValueEvent<$T>.set(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of ValueEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<T, _$SetImpl<T>> get copyWith =>
      __$$SetImplCopyWithImpl<T, _$SetImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? value) set,
  }) {
    return set(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? value)? set,
  }) {
    return set?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Set<T> value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Set<T> value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Set<T> value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class _Set<T> implements ValueEvent<T> {
  const factory _Set(final T? value) = _$SetImpl<T>;

  @override
  T? get value;

  /// Create a copy of ValueEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImplCopyWith<T, _$SetImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
