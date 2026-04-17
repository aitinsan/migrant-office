// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design-tokens.tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DesignKitVariables {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpaceDesignTokens space) space,
    required TResult Function(RadiusDesignTokens radius) radius,
    required TResult Function(SizeDesignTokens size) size,
    required TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignTokens space)? space,
    TResult? Function(RadiusDesignTokens radius)? radius,
    TResult? Function(SizeDesignTokens size)? size,
    TResult? Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpaceDesignTokens space)? space,
    TResult Function(RadiusDesignTokens radius)? radius,
    TResult Function(SizeDesignTokens size)? size,
    TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceDesignKitVariables value) space,
    required TResult Function(RadiusDesignKitVariables value) radius,
    required TResult Function(SizeDesignKitVariables value) size,
    required TResult Function(ColorDesignKitVariables value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignKitVariables value)? space,
    TResult? Function(RadiusDesignKitVariables value)? radius,
    TResult? Function(SizeDesignKitVariables value)? size,
    TResult? Function(ColorDesignKitVariables value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceDesignKitVariables value)? space,
    TResult Function(RadiusDesignKitVariables value)? radius,
    TResult Function(SizeDesignKitVariables value)? size,
    TResult Function(ColorDesignKitVariables value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignKitVariablesCopyWith<$Res> {
  factory $DesignKitVariablesCopyWith(
    DesignKitVariables value,
    $Res Function(DesignKitVariables) then,
  ) = _$DesignKitVariablesCopyWithImpl<$Res, DesignKitVariables>;
}

/// @nodoc
class _$DesignKitVariablesCopyWithImpl<$Res, $Val extends DesignKitVariables>
    implements $DesignKitVariablesCopyWith<$Res> {
  _$DesignKitVariablesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpaceDesignKitVariablesImplCopyWith<$Res> {
  factory _$$SpaceDesignKitVariablesImplCopyWith(
    _$SpaceDesignKitVariablesImpl value,
    $Res Function(_$SpaceDesignKitVariablesImpl) then,
  ) = __$$SpaceDesignKitVariablesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpaceDesignTokens space});

  $SpaceDesignTokensCopyWith<$Res> get space;
}

/// @nodoc
class __$$SpaceDesignKitVariablesImplCopyWithImpl<$Res>
    extends
        _$DesignKitVariablesCopyWithImpl<$Res, _$SpaceDesignKitVariablesImpl>
    implements _$$SpaceDesignKitVariablesImplCopyWith<$Res> {
  __$$SpaceDesignKitVariablesImplCopyWithImpl(
    _$SpaceDesignKitVariablesImpl _value,
    $Res Function(_$SpaceDesignKitVariablesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? space = null}) {
    return _then(
      _$SpaceDesignKitVariablesImpl(
        space: null == space
            ? _value.space
            : space // ignore: cast_nullable_to_non_nullable
                  as SpaceDesignTokens,
      ),
    );
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpaceDesignTokensCopyWith<$Res> get space {
    return $SpaceDesignTokensCopyWith<$Res>(_value.space, (value) {
      return _then(_value.copyWith(space: value));
    });
  }
}

/// @nodoc

class _$SpaceDesignKitVariablesImpl implements SpaceDesignKitVariables {
  const _$SpaceDesignKitVariablesImpl({
    this.space = const SpaceDesignTokens.space(),
  });

  @override
  @JsonKey()
  final SpaceDesignTokens space;

  @override
  String toString() {
    return 'DesignKitVariables.space(space: $space)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceDesignKitVariablesImpl &&
            (identical(other.space, space) || other.space == space));
  }

  @override
  int get hashCode => Object.hash(runtimeType, space);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceDesignKitVariablesImplCopyWith<_$SpaceDesignKitVariablesImpl>
  get copyWith =>
      __$$SpaceDesignKitVariablesImplCopyWithImpl<
        _$SpaceDesignKitVariablesImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpaceDesignTokens space) space,
    required TResult Function(RadiusDesignTokens radius) radius,
    required TResult Function(SizeDesignTokens size) size,
    required TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )
    color,
  }) {
    return space(this.space);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignTokens space)? space,
    TResult? Function(RadiusDesignTokens radius)? radius,
    TResult? Function(SizeDesignTokens size)? size,
    TResult? Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
  }) {
    return space?.call(this.space);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpaceDesignTokens space)? space,
    TResult Function(RadiusDesignTokens radius)? radius,
    TResult Function(SizeDesignTokens size)? size,
    TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space(this.space);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceDesignKitVariables value) space,
    required TResult Function(RadiusDesignKitVariables value) radius,
    required TResult Function(SizeDesignKitVariables value) size,
    required TResult Function(ColorDesignKitVariables value) color,
  }) {
    return space(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignKitVariables value)? space,
    TResult? Function(RadiusDesignKitVariables value)? radius,
    TResult? Function(SizeDesignKitVariables value)? size,
    TResult? Function(ColorDesignKitVariables value)? color,
  }) {
    return space?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceDesignKitVariables value)? space,
    TResult Function(RadiusDesignKitVariables value)? radius,
    TResult Function(SizeDesignKitVariables value)? size,
    TResult Function(ColorDesignKitVariables value)? color,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space(this);
    }
    return orElse();
  }
}

abstract class SpaceDesignKitVariables implements DesignKitVariables {
  const factory SpaceDesignKitVariables({final SpaceDesignTokens space}) =
      _$SpaceDesignKitVariablesImpl;

  SpaceDesignTokens get space;

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpaceDesignKitVariablesImplCopyWith<_$SpaceDesignKitVariablesImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadiusDesignKitVariablesImplCopyWith<$Res> {
  factory _$$RadiusDesignKitVariablesImplCopyWith(
    _$RadiusDesignKitVariablesImpl value,
    $Res Function(_$RadiusDesignKitVariablesImpl) then,
  ) = __$$RadiusDesignKitVariablesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RadiusDesignTokens radius});

  $RadiusDesignTokensCopyWith<$Res> get radius;
}

/// @nodoc
class __$$RadiusDesignKitVariablesImplCopyWithImpl<$Res>
    extends
        _$DesignKitVariablesCopyWithImpl<$Res, _$RadiusDesignKitVariablesImpl>
    implements _$$RadiusDesignKitVariablesImplCopyWith<$Res> {
  __$$RadiusDesignKitVariablesImplCopyWithImpl(
    _$RadiusDesignKitVariablesImpl _value,
    $Res Function(_$RadiusDesignKitVariablesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? radius = null}) {
    return _then(
      _$RadiusDesignKitVariablesImpl(
        radius: null == radius
            ? _value.radius
            : radius // ignore: cast_nullable_to_non_nullable
                  as RadiusDesignTokens,
      ),
    );
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RadiusDesignTokensCopyWith<$Res> get radius {
    return $RadiusDesignTokensCopyWith<$Res>(_value.radius, (value) {
      return _then(_value.copyWith(radius: value));
    });
  }
}

/// @nodoc

class _$RadiusDesignKitVariablesImpl implements RadiusDesignKitVariables {
  const _$RadiusDesignKitVariablesImpl({
    this.radius = const RadiusDesignTokens.radius(),
  });

  @override
  @JsonKey()
  final RadiusDesignTokens radius;

  @override
  String toString() {
    return 'DesignKitVariables.radius(radius: $radius)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadiusDesignKitVariablesImpl &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @override
  int get hashCode => Object.hash(runtimeType, radius);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RadiusDesignKitVariablesImplCopyWith<_$RadiusDesignKitVariablesImpl>
  get copyWith =>
      __$$RadiusDesignKitVariablesImplCopyWithImpl<
        _$RadiusDesignKitVariablesImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpaceDesignTokens space) space,
    required TResult Function(RadiusDesignTokens radius) radius,
    required TResult Function(SizeDesignTokens size) size,
    required TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )
    color,
  }) {
    return radius(this.radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignTokens space)? space,
    TResult? Function(RadiusDesignTokens radius)? radius,
    TResult? Function(SizeDesignTokens size)? size,
    TResult? Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
  }) {
    return radius?.call(this.radius);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpaceDesignTokens space)? space,
    TResult Function(RadiusDesignTokens radius)? radius,
    TResult Function(SizeDesignTokens size)? size,
    TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(this.radius);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceDesignKitVariables value) space,
    required TResult Function(RadiusDesignKitVariables value) radius,
    required TResult Function(SizeDesignKitVariables value) size,
    required TResult Function(ColorDesignKitVariables value) color,
  }) {
    return radius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignKitVariables value)? space,
    TResult? Function(RadiusDesignKitVariables value)? radius,
    TResult? Function(SizeDesignKitVariables value)? size,
    TResult? Function(ColorDesignKitVariables value)? color,
  }) {
    return radius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceDesignKitVariables value)? space,
    TResult Function(RadiusDesignKitVariables value)? radius,
    TResult Function(SizeDesignKitVariables value)? size,
    TResult Function(ColorDesignKitVariables value)? color,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(this);
    }
    return orElse();
  }
}

abstract class RadiusDesignKitVariables implements DesignKitVariables {
  const factory RadiusDesignKitVariables({final RadiusDesignTokens radius}) =
      _$RadiusDesignKitVariablesImpl;

  RadiusDesignTokens get radius;

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RadiusDesignKitVariablesImplCopyWith<_$RadiusDesignKitVariablesImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SizeDesignKitVariablesImplCopyWith<$Res> {
  factory _$$SizeDesignKitVariablesImplCopyWith(
    _$SizeDesignKitVariablesImpl value,
    $Res Function(_$SizeDesignKitVariablesImpl) then,
  ) = __$$SizeDesignKitVariablesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SizeDesignTokens size});

  $SizeDesignTokensCopyWith<$Res> get size;
}

/// @nodoc
class __$$SizeDesignKitVariablesImplCopyWithImpl<$Res>
    extends _$DesignKitVariablesCopyWithImpl<$Res, _$SizeDesignKitVariablesImpl>
    implements _$$SizeDesignKitVariablesImplCopyWith<$Res> {
  __$$SizeDesignKitVariablesImplCopyWithImpl(
    _$SizeDesignKitVariablesImpl _value,
    $Res Function(_$SizeDesignKitVariablesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? size = null}) {
    return _then(
      _$SizeDesignKitVariablesImpl(
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as SizeDesignTokens,
      ),
    );
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SizeDesignTokensCopyWith<$Res> get size {
    return $SizeDesignTokensCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value));
    });
  }
}

/// @nodoc

class _$SizeDesignKitVariablesImpl implements SizeDesignKitVariables {
  const _$SizeDesignKitVariablesImpl({
    this.size = const SizeDesignTokens.size(),
  });

  @override
  @JsonKey()
  final SizeDesignTokens size;

  @override
  String toString() {
    return 'DesignKitVariables.size(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeDesignKitVariablesImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeDesignKitVariablesImplCopyWith<_$SizeDesignKitVariablesImpl>
  get copyWith =>
      __$$SizeDesignKitVariablesImplCopyWithImpl<_$SizeDesignKitVariablesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpaceDesignTokens space) space,
    required TResult Function(RadiusDesignTokens radius) radius,
    required TResult Function(SizeDesignTokens size) size,
    required TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )
    color,
  }) {
    return size(this.size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignTokens space)? space,
    TResult? Function(RadiusDesignTokens radius)? radius,
    TResult? Function(SizeDesignTokens size)? size,
    TResult? Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
  }) {
    return size?.call(this.size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpaceDesignTokens space)? space,
    TResult Function(RadiusDesignTokens radius)? radius,
    TResult Function(SizeDesignTokens size)? size,
    TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size(this.size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceDesignKitVariables value) space,
    required TResult Function(RadiusDesignKitVariables value) radius,
    required TResult Function(SizeDesignKitVariables value) size,
    required TResult Function(ColorDesignKitVariables value) color,
  }) {
    return size(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignKitVariables value)? space,
    TResult? Function(RadiusDesignKitVariables value)? radius,
    TResult? Function(SizeDesignKitVariables value)? size,
    TResult? Function(ColorDesignKitVariables value)? color,
  }) {
    return size?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceDesignKitVariables value)? space,
    TResult Function(RadiusDesignKitVariables value)? radius,
    TResult Function(SizeDesignKitVariables value)? size,
    TResult Function(ColorDesignKitVariables value)? color,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size(this);
    }
    return orElse();
  }
}

abstract class SizeDesignKitVariables implements DesignKitVariables {
  const factory SizeDesignKitVariables({final SizeDesignTokens size}) =
      _$SizeDesignKitVariablesImpl;

  SizeDesignTokens get size;

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeDesignKitVariablesImplCopyWith<_$SizeDesignKitVariablesImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ColorDesignKitVariablesImplCopyWith<$Res> {
  factory _$$ColorDesignKitVariablesImplCopyWith(
    _$ColorDesignKitVariablesImpl value,
    $Res Function(_$ColorDesignKitVariablesImpl) then,
  ) = __$$ColorDesignKitVariablesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    BackgroundDesignTokens background,
    ContentDesignTokens content,
    SurfaceDesignTokens surface,
    BaseDesignTokens base,
    StrokeDesignTokens stroke,
    ButtonDesignTokens button,
  });

  $BackgroundDesignTokensCopyWith<$Res> get background;
  $ContentDesignTokensCopyWith<$Res> get content;
  $SurfaceDesignTokensCopyWith<$Res> get surface;
  $BaseDesignTokensCopyWith<$Res> get base;
  $StrokeDesignTokensCopyWith<$Res> get stroke;
  $ButtonDesignTokensCopyWith<$Res> get button;
}

/// @nodoc
class __$$ColorDesignKitVariablesImplCopyWithImpl<$Res>
    extends
        _$DesignKitVariablesCopyWithImpl<$Res, _$ColorDesignKitVariablesImpl>
    implements _$$ColorDesignKitVariablesImplCopyWith<$Res> {
  __$$ColorDesignKitVariablesImplCopyWithImpl(
    _$ColorDesignKitVariablesImpl _value,
    $Res Function(_$ColorDesignKitVariablesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? background = null,
    Object? content = null,
    Object? surface = null,
    Object? base = null,
    Object? stroke = null,
    Object? button = null,
  }) {
    return _then(
      _$ColorDesignKitVariablesImpl(
        background: null == background
            ? _value.background
            : background // ignore: cast_nullable_to_non_nullable
                  as BackgroundDesignTokens,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as ContentDesignTokens,
        surface: null == surface
            ? _value.surface
            : surface // ignore: cast_nullable_to_non_nullable
                  as SurfaceDesignTokens,
        base: null == base
            ? _value.base
            : base // ignore: cast_nullable_to_non_nullable
                  as BaseDesignTokens,
        stroke: null == stroke
            ? _value.stroke
            : stroke // ignore: cast_nullable_to_non_nullable
                  as StrokeDesignTokens,
        button: null == button
            ? _value.button
            : button // ignore: cast_nullable_to_non_nullable
                  as ButtonDesignTokens,
      ),
    );
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BackgroundDesignTokensCopyWith<$Res> get background {
    return $BackgroundDesignTokensCopyWith<$Res>(_value.background, (value) {
      return _then(_value.copyWith(background: value));
    });
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentDesignTokensCopyWith<$Res> get content {
    return $ContentDesignTokensCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurfaceDesignTokensCopyWith<$Res> get surface {
    return $SurfaceDesignTokensCopyWith<$Res>(_value.surface, (value) {
      return _then(_value.copyWith(surface: value));
    });
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseDesignTokensCopyWith<$Res> get base {
    return $BaseDesignTokensCopyWith<$Res>(_value.base, (value) {
      return _then(_value.copyWith(base: value));
    });
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrokeDesignTokensCopyWith<$Res> get stroke {
    return $StrokeDesignTokensCopyWith<$Res>(_value.stroke, (value) {
      return _then(_value.copyWith(stroke: value));
    });
  }

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ButtonDesignTokensCopyWith<$Res> get button {
    return $ButtonDesignTokensCopyWith<$Res>(_value.button, (value) {
      return _then(_value.copyWith(button: value));
    });
  }
}

/// @nodoc

class _$ColorDesignKitVariablesImpl implements ColorDesignKitVariables {
  const _$ColorDesignKitVariablesImpl({
    this.background = const BackgroundDesignTokens.color(),
    this.content = const ContentDesignTokens.color(),
    this.surface = const SurfaceDesignTokens.color(),
    this.base = const BaseDesignTokens.color(),
    this.stroke = const StrokeDesignTokens.color(),
    this.button = const ButtonDesignTokens.color(),
  });

  @override
  @JsonKey()
  final BackgroundDesignTokens background;
  @override
  @JsonKey()
  final ContentDesignTokens content;
  @override
  @JsonKey()
  final SurfaceDesignTokens surface;
  @override
  @JsonKey()
  final BaseDesignTokens base;
  @override
  @JsonKey()
  final StrokeDesignTokens stroke;
  @override
  @JsonKey()
  final ButtonDesignTokens button;

  @override
  String toString() {
    return 'DesignKitVariables.color(background: $background, content: $content, surface: $surface, base: $base, stroke: $stroke, button: $button)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorDesignKitVariablesImpl &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.surface, surface) || other.surface == surface) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.stroke, stroke) || other.stroke == stroke) &&
            (identical(other.button, button) || other.button == button));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    background,
    content,
    surface,
    base,
    stroke,
    button,
  );

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorDesignKitVariablesImplCopyWith<_$ColorDesignKitVariablesImpl>
  get copyWith =>
      __$$ColorDesignKitVariablesImplCopyWithImpl<
        _$ColorDesignKitVariablesImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SpaceDesignTokens space) space,
    required TResult Function(RadiusDesignTokens radius) radius,
    required TResult Function(SizeDesignTokens size) size,
    required TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )
    color,
  }) {
    return color(background, content, surface, base, stroke, button);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignTokens space)? space,
    TResult? Function(RadiusDesignTokens radius)? radius,
    TResult? Function(SizeDesignTokens size)? size,
    TResult? Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
  }) {
    return color?.call(background, content, surface, base, stroke, button);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SpaceDesignTokens space)? space,
    TResult Function(RadiusDesignTokens radius)? radius,
    TResult Function(SizeDesignTokens size)? size,
    TResult Function(
      BackgroundDesignTokens background,
      ContentDesignTokens content,
      SurfaceDesignTokens surface,
      BaseDesignTokens base,
      StrokeDesignTokens stroke,
      ButtonDesignTokens button,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(background, content, surface, base, stroke, button);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceDesignKitVariables value) space,
    required TResult Function(RadiusDesignKitVariables value) radius,
    required TResult Function(SizeDesignKitVariables value) size,
    required TResult Function(ColorDesignKitVariables value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceDesignKitVariables value)? space,
    TResult? Function(RadiusDesignKitVariables value)? radius,
    TResult? Function(SizeDesignKitVariables value)? size,
    TResult? Function(ColorDesignKitVariables value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceDesignKitVariables value)? space,
    TResult Function(RadiusDesignKitVariables value)? radius,
    TResult Function(SizeDesignKitVariables value)? size,
    TResult Function(ColorDesignKitVariables value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorDesignKitVariables implements DesignKitVariables {
  const factory ColorDesignKitVariables({
    final BackgroundDesignTokens background,
    final ContentDesignTokens content,
    final SurfaceDesignTokens surface,
    final BaseDesignTokens base,
    final StrokeDesignTokens stroke,
    final ButtonDesignTokens button,
  }) = _$ColorDesignKitVariablesImpl;

  BackgroundDesignTokens get background;
  ContentDesignTokens get content;
  SurfaceDesignTokens get surface;
  BaseDesignTokens get base;
  StrokeDesignTokens get stroke;
  ButtonDesignTokens get button;

  /// Create a copy of DesignKitVariables
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorDesignKitVariablesImplCopyWith<_$ColorDesignKitVariablesImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpaceDesignTokens {
  double get x0 => throw _privateConstructorUsedError;
  double get x2 => throw _privateConstructorUsedError;
  double get x4 => throw _privateConstructorUsedError;
  double get x8 => throw _privateConstructorUsedError;
  double get x12 => throw _privateConstructorUsedError;
  double get x16 => throw _privateConstructorUsedError;
  double get x20 => throw _privateConstructorUsedError;
  double get x24 => throw _privateConstructorUsedError;
  double get x28 => throw _privateConstructorUsedError;
  double get x32 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )
    space,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )?
    space,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )?
    space,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceSpaceDesignTokens value) space,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceSpaceDesignTokens value)? space,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceSpaceDesignTokens value)? space,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SpaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpaceDesignTokensCopyWith<SpaceDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceDesignTokensCopyWith<$Res> {
  factory $SpaceDesignTokensCopyWith(
    SpaceDesignTokens value,
    $Res Function(SpaceDesignTokens) then,
  ) = _$SpaceDesignTokensCopyWithImpl<$Res, SpaceDesignTokens>;
  @useResult
  $Res call({
    double x0,
    double x2,
    double x4,
    double x8,
    double x12,
    double x16,
    double x20,
    double x24,
    double x28,
    double x32,
  });
}

/// @nodoc
class _$SpaceDesignTokensCopyWithImpl<$Res, $Val extends SpaceDesignTokens>
    implements $SpaceDesignTokensCopyWith<$Res> {
  _$SpaceDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x0 = null,
    Object? x2 = null,
    Object? x4 = null,
    Object? x8 = null,
    Object? x12 = null,
    Object? x16 = null,
    Object? x20 = null,
    Object? x24 = null,
    Object? x28 = null,
    Object? x32 = null,
  }) {
    return _then(
      _value.copyWith(
            x0: null == x0
                ? _value.x0
                : x0 // ignore: cast_nullable_to_non_nullable
                      as double,
            x2: null == x2
                ? _value.x2
                : x2 // ignore: cast_nullable_to_non_nullable
                      as double,
            x4: null == x4
                ? _value.x4
                : x4 // ignore: cast_nullable_to_non_nullable
                      as double,
            x8: null == x8
                ? _value.x8
                : x8 // ignore: cast_nullable_to_non_nullable
                      as double,
            x12: null == x12
                ? _value.x12
                : x12 // ignore: cast_nullable_to_non_nullable
                      as double,
            x16: null == x16
                ? _value.x16
                : x16 // ignore: cast_nullable_to_non_nullable
                      as double,
            x20: null == x20
                ? _value.x20
                : x20 // ignore: cast_nullable_to_non_nullable
                      as double,
            x24: null == x24
                ? _value.x24
                : x24 // ignore: cast_nullable_to_non_nullable
                      as double,
            x28: null == x28
                ? _value.x28
                : x28 // ignore: cast_nullable_to_non_nullable
                      as double,
            x32: null == x32
                ? _value.x32
                : x32 // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpaceSpaceDesignTokensImplCopyWith<$Res>
    implements $SpaceDesignTokensCopyWith<$Res> {
  factory _$$SpaceSpaceDesignTokensImplCopyWith(
    _$SpaceSpaceDesignTokensImpl value,
    $Res Function(_$SpaceSpaceDesignTokensImpl) then,
  ) = __$$SpaceSpaceDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double x0,
    double x2,
    double x4,
    double x8,
    double x12,
    double x16,
    double x20,
    double x24,
    double x28,
    double x32,
  });
}

/// @nodoc
class __$$SpaceSpaceDesignTokensImplCopyWithImpl<$Res>
    extends _$SpaceDesignTokensCopyWithImpl<$Res, _$SpaceSpaceDesignTokensImpl>
    implements _$$SpaceSpaceDesignTokensImplCopyWith<$Res> {
  __$$SpaceSpaceDesignTokensImplCopyWithImpl(
    _$SpaceSpaceDesignTokensImpl _value,
    $Res Function(_$SpaceSpaceDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x0 = null,
    Object? x2 = null,
    Object? x4 = null,
    Object? x8 = null,
    Object? x12 = null,
    Object? x16 = null,
    Object? x20 = null,
    Object? x24 = null,
    Object? x28 = null,
    Object? x32 = null,
  }) {
    return _then(
      _$SpaceSpaceDesignTokensImpl(
        x0: null == x0
            ? _value.x0
            : x0 // ignore: cast_nullable_to_non_nullable
                  as double,
        x2: null == x2
            ? _value.x2
            : x2 // ignore: cast_nullable_to_non_nullable
                  as double,
        x4: null == x4
            ? _value.x4
            : x4 // ignore: cast_nullable_to_non_nullable
                  as double,
        x8: null == x8
            ? _value.x8
            : x8 // ignore: cast_nullable_to_non_nullable
                  as double,
        x12: null == x12
            ? _value.x12
            : x12 // ignore: cast_nullable_to_non_nullable
                  as double,
        x16: null == x16
            ? _value.x16
            : x16 // ignore: cast_nullable_to_non_nullable
                  as double,
        x20: null == x20
            ? _value.x20
            : x20 // ignore: cast_nullable_to_non_nullable
                  as double,
        x24: null == x24
            ? _value.x24
            : x24 // ignore: cast_nullable_to_non_nullable
                  as double,
        x28: null == x28
            ? _value.x28
            : x28 // ignore: cast_nullable_to_non_nullable
                  as double,
        x32: null == x32
            ? _value.x32
            : x32 // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$SpaceSpaceDesignTokensImpl implements SpaceSpaceDesignTokens {
  const _$SpaceSpaceDesignTokensImpl({
    this.x0 = 0,
    this.x2 = 2,
    this.x4 = 4,
    this.x8 = 8,
    this.x12 = 12,
    this.x16 = 16,
    this.x20 = 20,
    this.x24 = 24,
    this.x28 = 28,
    this.x32 = 32,
  });

  @override
  @JsonKey()
  final double x0;
  @override
  @JsonKey()
  final double x2;
  @override
  @JsonKey()
  final double x4;
  @override
  @JsonKey()
  final double x8;
  @override
  @JsonKey()
  final double x12;
  @override
  @JsonKey()
  final double x16;
  @override
  @JsonKey()
  final double x20;
  @override
  @JsonKey()
  final double x24;
  @override
  @JsonKey()
  final double x28;
  @override
  @JsonKey()
  final double x32;

  @override
  String toString() {
    return 'SpaceDesignTokens.space(x0: $x0, x2: $x2, x4: $x4, x8: $x8, x12: $x12, x16: $x16, x20: $x20, x24: $x24, x28: $x28, x32: $x32)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceSpaceDesignTokensImpl &&
            (identical(other.x0, x0) || other.x0 == x0) &&
            (identical(other.x2, x2) || other.x2 == x2) &&
            (identical(other.x4, x4) || other.x4 == x4) &&
            (identical(other.x8, x8) || other.x8 == x8) &&
            (identical(other.x12, x12) || other.x12 == x12) &&
            (identical(other.x16, x16) || other.x16 == x16) &&
            (identical(other.x20, x20) || other.x20 == x20) &&
            (identical(other.x24, x24) || other.x24 == x24) &&
            (identical(other.x28, x28) || other.x28 == x28) &&
            (identical(other.x32, x32) || other.x32 == x32));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, x0, x2, x4, x8, x12, x16, x20, x24, x28, x32);

  /// Create a copy of SpaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceSpaceDesignTokensImplCopyWith<_$SpaceSpaceDesignTokensImpl>
  get copyWith =>
      __$$SpaceSpaceDesignTokensImplCopyWithImpl<_$SpaceSpaceDesignTokensImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )
    space,
  }) {
    return space(x0, x2, x4, x8, x12, x16, x20, x24, x28, x32);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )?
    space,
  }) {
    return space?.call(x0, x2, x4, x8, x12, x16, x20, x24, x28, x32);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      double x0,
      double x2,
      double x4,
      double x8,
      double x12,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
    )?
    space,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space(x0, x2, x4, x8, x12, x16, x20, x24, x28, x32);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpaceSpaceDesignTokens value) space,
  }) {
    return space(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpaceSpaceDesignTokens value)? space,
  }) {
    return space?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpaceSpaceDesignTokens value)? space,
    required TResult orElse(),
  }) {
    if (space != null) {
      return space(this);
    }
    return orElse();
  }
}

abstract class SpaceSpaceDesignTokens implements SpaceDesignTokens {
  const factory SpaceSpaceDesignTokens({
    final double x0,
    final double x2,
    final double x4,
    final double x8,
    final double x12,
    final double x16,
    final double x20,
    final double x24,
    final double x28,
    final double x32,
  }) = _$SpaceSpaceDesignTokensImpl;

  @override
  double get x0;
  @override
  double get x2;
  @override
  double get x4;
  @override
  double get x8;
  @override
  double get x12;
  @override
  double get x16;
  @override
  double get x20;
  @override
  double get x24;
  @override
  double get x28;
  @override
  double get x32;

  /// Create a copy of SpaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpaceSpaceDesignTokensImplCopyWith<_$SpaceSpaceDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RadiusDesignTokens {
  double get x12 => throw _privateConstructorUsedError;
  double get x28 => throw _privateConstructorUsedError;
  double get x32 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double x12, double x28, double x32) radius,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double x12, double x28, double x32)? radius,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double x12, double x28, double x32)? radius,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadiusRadiusDesignTokens value) radius,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadiusRadiusDesignTokens value)? radius,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadiusRadiusDesignTokens value)? radius,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of RadiusDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RadiusDesignTokensCopyWith<RadiusDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadiusDesignTokensCopyWith<$Res> {
  factory $RadiusDesignTokensCopyWith(
    RadiusDesignTokens value,
    $Res Function(RadiusDesignTokens) then,
  ) = _$RadiusDesignTokensCopyWithImpl<$Res, RadiusDesignTokens>;
  @useResult
  $Res call({double x12, double x28, double x32});
}

/// @nodoc
class _$RadiusDesignTokensCopyWithImpl<$Res, $Val extends RadiusDesignTokens>
    implements $RadiusDesignTokensCopyWith<$Res> {
  _$RadiusDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RadiusDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x12 = null, Object? x28 = null, Object? x32 = null}) {
    return _then(
      _value.copyWith(
            x12: null == x12
                ? _value.x12
                : x12 // ignore: cast_nullable_to_non_nullable
                      as double,
            x28: null == x28
                ? _value.x28
                : x28 // ignore: cast_nullable_to_non_nullable
                      as double,
            x32: null == x32
                ? _value.x32
                : x32 // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RadiusRadiusDesignTokensImplCopyWith<$Res>
    implements $RadiusDesignTokensCopyWith<$Res> {
  factory _$$RadiusRadiusDesignTokensImplCopyWith(
    _$RadiusRadiusDesignTokensImpl value,
    $Res Function(_$RadiusRadiusDesignTokensImpl) then,
  ) = __$$RadiusRadiusDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x12, double x28, double x32});
}

/// @nodoc
class __$$RadiusRadiusDesignTokensImplCopyWithImpl<$Res>
    extends
        _$RadiusDesignTokensCopyWithImpl<$Res, _$RadiusRadiusDesignTokensImpl>
    implements _$$RadiusRadiusDesignTokensImplCopyWith<$Res> {
  __$$RadiusRadiusDesignTokensImplCopyWithImpl(
    _$RadiusRadiusDesignTokensImpl _value,
    $Res Function(_$RadiusRadiusDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RadiusDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x12 = null, Object? x28 = null, Object? x32 = null}) {
    return _then(
      _$RadiusRadiusDesignTokensImpl(
        x12: null == x12
            ? _value.x12
            : x12 // ignore: cast_nullable_to_non_nullable
                  as double,
        x28: null == x28
            ? _value.x28
            : x28 // ignore: cast_nullable_to_non_nullable
                  as double,
        x32: null == x32
            ? _value.x32
            : x32 // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$RadiusRadiusDesignTokensImpl implements RadiusRadiusDesignTokens {
  const _$RadiusRadiusDesignTokensImpl({
    this.x12 = 12,
    this.x28 = 28,
    this.x32 = 32,
  });

  @override
  @JsonKey()
  final double x12;
  @override
  @JsonKey()
  final double x28;
  @override
  @JsonKey()
  final double x32;

  @override
  String toString() {
    return 'RadiusDesignTokens.radius(x12: $x12, x28: $x28, x32: $x32)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadiusRadiusDesignTokensImpl &&
            (identical(other.x12, x12) || other.x12 == x12) &&
            (identical(other.x28, x28) || other.x28 == x28) &&
            (identical(other.x32, x32) || other.x32 == x32));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x12, x28, x32);

  /// Create a copy of RadiusDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RadiusRadiusDesignTokensImplCopyWith<_$RadiusRadiusDesignTokensImpl>
  get copyWith =>
      __$$RadiusRadiusDesignTokensImplCopyWithImpl<
        _$RadiusRadiusDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double x12, double x28, double x32) radius,
  }) {
    return radius(x12, x28, x32);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double x12, double x28, double x32)? radius,
  }) {
    return radius?.call(x12, x28, x32);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double x12, double x28, double x32)? radius,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(x12, x28, x32);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadiusRadiusDesignTokens value) radius,
  }) {
    return radius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadiusRadiusDesignTokens value)? radius,
  }) {
    return radius?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadiusRadiusDesignTokens value)? radius,
    required TResult orElse(),
  }) {
    if (radius != null) {
      return radius(this);
    }
    return orElse();
  }
}

abstract class RadiusRadiusDesignTokens implements RadiusDesignTokens {
  const factory RadiusRadiusDesignTokens({
    final double x12,
    final double x28,
    final double x32,
  }) = _$RadiusRadiusDesignTokensImpl;

  @override
  double get x12;
  @override
  double get x28;
  @override
  double get x32;

  /// Create a copy of RadiusDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RadiusRadiusDesignTokensImplCopyWith<_$RadiusRadiusDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SizeDesignTokens {
  double get x2 => throw _privateConstructorUsedError;
  double get x4 => throw _privateConstructorUsedError;
  double get x8 => throw _privateConstructorUsedError;
  double get x16 => throw _privateConstructorUsedError;
  double get x20 => throw _privateConstructorUsedError;
  double get x24 => throw _privateConstructorUsedError;
  double get x28 => throw _privateConstructorUsedError;
  double get x32 => throw _privateConstructorUsedError;
  double get x40 => throw _privateConstructorUsedError;
  double get x44 => throw _privateConstructorUsedError;
  double get x56 => throw _privateConstructorUsedError;
  double get x64 => throw _privateConstructorUsedError;
  double get x328 => throw _privateConstructorUsedError;
  double get x360 => throw _privateConstructorUsedError;
  double get x800 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )
    size,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )?
    size,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )?
    size,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SizeSizeDesignTokens value) size,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SizeSizeDesignTokens value)? size,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SizeSizeDesignTokens value)? size,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SizeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeDesignTokensCopyWith<SizeDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeDesignTokensCopyWith<$Res> {
  factory $SizeDesignTokensCopyWith(
    SizeDesignTokens value,
    $Res Function(SizeDesignTokens) then,
  ) = _$SizeDesignTokensCopyWithImpl<$Res, SizeDesignTokens>;
  @useResult
  $Res call({
    double x2,
    double x4,
    double x8,
    double x16,
    double x20,
    double x24,
    double x28,
    double x32,
    double x40,
    double x44,
    double x56,
    double x64,
    double x328,
    double x360,
    double x800,
  });
}

/// @nodoc
class _$SizeDesignTokensCopyWithImpl<$Res, $Val extends SizeDesignTokens>
    implements $SizeDesignTokensCopyWith<$Res> {
  _$SizeDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x2 = null,
    Object? x4 = null,
    Object? x8 = null,
    Object? x16 = null,
    Object? x20 = null,
    Object? x24 = null,
    Object? x28 = null,
    Object? x32 = null,
    Object? x40 = null,
    Object? x44 = null,
    Object? x56 = null,
    Object? x64 = null,
    Object? x328 = null,
    Object? x360 = null,
    Object? x800 = null,
  }) {
    return _then(
      _value.copyWith(
            x2: null == x2
                ? _value.x2
                : x2 // ignore: cast_nullable_to_non_nullable
                      as double,
            x4: null == x4
                ? _value.x4
                : x4 // ignore: cast_nullable_to_non_nullable
                      as double,
            x8: null == x8
                ? _value.x8
                : x8 // ignore: cast_nullable_to_non_nullable
                      as double,
            x16: null == x16
                ? _value.x16
                : x16 // ignore: cast_nullable_to_non_nullable
                      as double,
            x20: null == x20
                ? _value.x20
                : x20 // ignore: cast_nullable_to_non_nullable
                      as double,
            x24: null == x24
                ? _value.x24
                : x24 // ignore: cast_nullable_to_non_nullable
                      as double,
            x28: null == x28
                ? _value.x28
                : x28 // ignore: cast_nullable_to_non_nullable
                      as double,
            x32: null == x32
                ? _value.x32
                : x32 // ignore: cast_nullable_to_non_nullable
                      as double,
            x40: null == x40
                ? _value.x40
                : x40 // ignore: cast_nullable_to_non_nullable
                      as double,
            x44: null == x44
                ? _value.x44
                : x44 // ignore: cast_nullable_to_non_nullable
                      as double,
            x56: null == x56
                ? _value.x56
                : x56 // ignore: cast_nullable_to_non_nullable
                      as double,
            x64: null == x64
                ? _value.x64
                : x64 // ignore: cast_nullable_to_non_nullable
                      as double,
            x328: null == x328
                ? _value.x328
                : x328 // ignore: cast_nullable_to_non_nullable
                      as double,
            x360: null == x360
                ? _value.x360
                : x360 // ignore: cast_nullable_to_non_nullable
                      as double,
            x800: null == x800
                ? _value.x800
                : x800 // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SizeSizeDesignTokensImplCopyWith<$Res>
    implements $SizeDesignTokensCopyWith<$Res> {
  factory _$$SizeSizeDesignTokensImplCopyWith(
    _$SizeSizeDesignTokensImpl value,
    $Res Function(_$SizeSizeDesignTokensImpl) then,
  ) = __$$SizeSizeDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double x2,
    double x4,
    double x8,
    double x16,
    double x20,
    double x24,
    double x28,
    double x32,
    double x40,
    double x44,
    double x56,
    double x64,
    double x328,
    double x360,
    double x800,
  });
}

/// @nodoc
class __$$SizeSizeDesignTokensImplCopyWithImpl<$Res>
    extends _$SizeDesignTokensCopyWithImpl<$Res, _$SizeSizeDesignTokensImpl>
    implements _$$SizeSizeDesignTokensImplCopyWith<$Res> {
  __$$SizeSizeDesignTokensImplCopyWithImpl(
    _$SizeSizeDesignTokensImpl _value,
    $Res Function(_$SizeSizeDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SizeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x2 = null,
    Object? x4 = null,
    Object? x8 = null,
    Object? x16 = null,
    Object? x20 = null,
    Object? x24 = null,
    Object? x28 = null,
    Object? x32 = null,
    Object? x40 = null,
    Object? x44 = null,
    Object? x56 = null,
    Object? x64 = null,
    Object? x328 = null,
    Object? x360 = null,
    Object? x800 = null,
  }) {
    return _then(
      _$SizeSizeDesignTokensImpl(
        x2: null == x2
            ? _value.x2
            : x2 // ignore: cast_nullable_to_non_nullable
                  as double,
        x4: null == x4
            ? _value.x4
            : x4 // ignore: cast_nullable_to_non_nullable
                  as double,
        x8: null == x8
            ? _value.x8
            : x8 // ignore: cast_nullable_to_non_nullable
                  as double,
        x16: null == x16
            ? _value.x16
            : x16 // ignore: cast_nullable_to_non_nullable
                  as double,
        x20: null == x20
            ? _value.x20
            : x20 // ignore: cast_nullable_to_non_nullable
                  as double,
        x24: null == x24
            ? _value.x24
            : x24 // ignore: cast_nullable_to_non_nullable
                  as double,
        x28: null == x28
            ? _value.x28
            : x28 // ignore: cast_nullable_to_non_nullable
                  as double,
        x32: null == x32
            ? _value.x32
            : x32 // ignore: cast_nullable_to_non_nullable
                  as double,
        x40: null == x40
            ? _value.x40
            : x40 // ignore: cast_nullable_to_non_nullable
                  as double,
        x44: null == x44
            ? _value.x44
            : x44 // ignore: cast_nullable_to_non_nullable
                  as double,
        x56: null == x56
            ? _value.x56
            : x56 // ignore: cast_nullable_to_non_nullable
                  as double,
        x64: null == x64
            ? _value.x64
            : x64 // ignore: cast_nullable_to_non_nullable
                  as double,
        x328: null == x328
            ? _value.x328
            : x328 // ignore: cast_nullable_to_non_nullable
                  as double,
        x360: null == x360
            ? _value.x360
            : x360 // ignore: cast_nullable_to_non_nullable
                  as double,
        x800: null == x800
            ? _value.x800
            : x800 // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$SizeSizeDesignTokensImpl implements SizeSizeDesignTokens {
  const _$SizeSizeDesignTokensImpl({
    this.x2 = 2,
    this.x4 = 4,
    this.x8 = 8,
    this.x16 = 16,
    this.x20 = 20,
    this.x24 = 24,
    this.x28 = 28,
    this.x32 = 32,
    this.x40 = 40,
    this.x44 = 44,
    this.x56 = 56,
    this.x64 = 64,
    this.x328 = 328,
    this.x360 = 360,
    this.x800 = 800,
  });

  @override
  @JsonKey()
  final double x2;
  @override
  @JsonKey()
  final double x4;
  @override
  @JsonKey()
  final double x8;
  @override
  @JsonKey()
  final double x16;
  @override
  @JsonKey()
  final double x20;
  @override
  @JsonKey()
  final double x24;
  @override
  @JsonKey()
  final double x28;
  @override
  @JsonKey()
  final double x32;
  @override
  @JsonKey()
  final double x40;
  @override
  @JsonKey()
  final double x44;
  @override
  @JsonKey()
  final double x56;
  @override
  @JsonKey()
  final double x64;
  @override
  @JsonKey()
  final double x328;
  @override
  @JsonKey()
  final double x360;
  @override
  @JsonKey()
  final double x800;

  @override
  String toString() {
    return 'SizeDesignTokens.size(x2: $x2, x4: $x4, x8: $x8, x16: $x16, x20: $x20, x24: $x24, x28: $x28, x32: $x32, x40: $x40, x44: $x44, x56: $x56, x64: $x64, x328: $x328, x360: $x360, x800: $x800)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeSizeDesignTokensImpl &&
            (identical(other.x2, x2) || other.x2 == x2) &&
            (identical(other.x4, x4) || other.x4 == x4) &&
            (identical(other.x8, x8) || other.x8 == x8) &&
            (identical(other.x16, x16) || other.x16 == x16) &&
            (identical(other.x20, x20) || other.x20 == x20) &&
            (identical(other.x24, x24) || other.x24 == x24) &&
            (identical(other.x28, x28) || other.x28 == x28) &&
            (identical(other.x32, x32) || other.x32 == x32) &&
            (identical(other.x40, x40) || other.x40 == x40) &&
            (identical(other.x44, x44) || other.x44 == x44) &&
            (identical(other.x56, x56) || other.x56 == x56) &&
            (identical(other.x64, x64) || other.x64 == x64) &&
            (identical(other.x328, x328) || other.x328 == x328) &&
            (identical(other.x360, x360) || other.x360 == x360) &&
            (identical(other.x800, x800) || other.x800 == x800));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    x2,
    x4,
    x8,
    x16,
    x20,
    x24,
    x28,
    x32,
    x40,
    x44,
    x56,
    x64,
    x328,
    x360,
    x800,
  );

  /// Create a copy of SizeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeSizeDesignTokensImplCopyWith<_$SizeSizeDesignTokensImpl>
  get copyWith =>
      __$$SizeSizeDesignTokensImplCopyWithImpl<_$SizeSizeDesignTokensImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )
    size,
  }) {
    return size(
      x2,
      x4,
      x8,
      x16,
      x20,
      x24,
      x28,
      x32,
      x40,
      x44,
      x56,
      x64,
      x328,
      x360,
      x800,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )?
    size,
  }) {
    return size?.call(
      x2,
      x4,
      x8,
      x16,
      x20,
      x24,
      x28,
      x32,
      x40,
      x44,
      x56,
      x64,
      x328,
      x360,
      x800,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      double x2,
      double x4,
      double x8,
      double x16,
      double x20,
      double x24,
      double x28,
      double x32,
      double x40,
      double x44,
      double x56,
      double x64,
      double x328,
      double x360,
      double x800,
    )?
    size,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size(
        x2,
        x4,
        x8,
        x16,
        x20,
        x24,
        x28,
        x32,
        x40,
        x44,
        x56,
        x64,
        x328,
        x360,
        x800,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SizeSizeDesignTokens value) size,
  }) {
    return size(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SizeSizeDesignTokens value)? size,
  }) {
    return size?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SizeSizeDesignTokens value)? size,
    required TResult orElse(),
  }) {
    if (size != null) {
      return size(this);
    }
    return orElse();
  }
}

abstract class SizeSizeDesignTokens implements SizeDesignTokens {
  const factory SizeSizeDesignTokens({
    final double x2,
    final double x4,
    final double x8,
    final double x16,
    final double x20,
    final double x24,
    final double x28,
    final double x32,
    final double x40,
    final double x44,
    final double x56,
    final double x64,
    final double x328,
    final double x360,
    final double x800,
  }) = _$SizeSizeDesignTokensImpl;

  @override
  double get x2;
  @override
  double get x4;
  @override
  double get x8;
  @override
  double get x16;
  @override
  double get x20;
  @override
  double get x24;
  @override
  double get x28;
  @override
  double get x32;
  @override
  double get x40;
  @override
  double get x44;
  @override
  double get x56;
  @override
  double get x64;
  @override
  double get x328;
  @override
  double get x360;
  @override
  double get x800;

  /// Create a copy of SizeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeSizeDesignTokensImplCopyWith<_$SizeSizeDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BackgroundDesignTokens {
  Color get primary => throw _privateConstructorUsedError;
  Color get secondary => throw _privateConstructorUsedError;
  Color get tertiary => throw _privateConstructorUsedError;
  Color get positive => throw _privateConstructorUsedError;
  Color get negative => throw _privateConstructorUsedError;
  Color get neutral => throw _privateConstructorUsedError;
  Color get primaryBlurred => throw _privateConstructorUsedError;
  Color get sheetOverlay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorBackgroundDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorBackgroundDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorBackgroundDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundDesignTokensCopyWith<BackgroundDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundDesignTokensCopyWith<$Res> {
  factory $BackgroundDesignTokensCopyWith(
    BackgroundDesignTokens value,
    $Res Function(BackgroundDesignTokens) then,
  ) = _$BackgroundDesignTokensCopyWithImpl<$Res, BackgroundDesignTokens>;
  @useResult
  $Res call({
    Color primary,
    Color secondary,
    Color tertiary,
    Color positive,
    Color negative,
    Color neutral,
    Color primaryBlurred,
    Color sheetOverlay,
  });
}

/// @nodoc
class _$BackgroundDesignTokensCopyWithImpl<
  $Res,
  $Val extends BackgroundDesignTokens
>
    implements $BackgroundDesignTokensCopyWith<$Res> {
  _$BackgroundDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? tertiary = null,
    Object? positive = null,
    Object? negative = null,
    Object? neutral = null,
    Object? primaryBlurred = null,
    Object? sheetOverlay = null,
  }) {
    return _then(
      _value.copyWith(
            primary: null == primary
                ? _value.primary
                : primary // ignore: cast_nullable_to_non_nullable
                      as Color,
            secondary: null == secondary
                ? _value.secondary
                : secondary // ignore: cast_nullable_to_non_nullable
                      as Color,
            tertiary: null == tertiary
                ? _value.tertiary
                : tertiary // ignore: cast_nullable_to_non_nullable
                      as Color,
            positive: null == positive
                ? _value.positive
                : positive // ignore: cast_nullable_to_non_nullable
                      as Color,
            negative: null == negative
                ? _value.negative
                : negative // ignore: cast_nullable_to_non_nullable
                      as Color,
            neutral: null == neutral
                ? _value.neutral
                : neutral // ignore: cast_nullable_to_non_nullable
                      as Color,
            primaryBlurred: null == primaryBlurred
                ? _value.primaryBlurred
                : primaryBlurred // ignore: cast_nullable_to_non_nullable
                      as Color,
            sheetOverlay: null == sheetOverlay
                ? _value.sheetOverlay
                : sheetOverlay // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorBackgroundDesignTokensImplCopyWith<$Res>
    implements $BackgroundDesignTokensCopyWith<$Res> {
  factory _$$ColorBackgroundDesignTokensImplCopyWith(
    _$ColorBackgroundDesignTokensImpl value,
    $Res Function(_$ColorBackgroundDesignTokensImpl) then,
  ) = __$$ColorBackgroundDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Color primary,
    Color secondary,
    Color tertiary,
    Color positive,
    Color negative,
    Color neutral,
    Color primaryBlurred,
    Color sheetOverlay,
  });
}

/// @nodoc
class __$$ColorBackgroundDesignTokensImplCopyWithImpl<$Res>
    extends
        _$BackgroundDesignTokensCopyWithImpl<
          $Res,
          _$ColorBackgroundDesignTokensImpl
        >
    implements _$$ColorBackgroundDesignTokensImplCopyWith<$Res> {
  __$$ColorBackgroundDesignTokensImplCopyWithImpl(
    _$ColorBackgroundDesignTokensImpl _value,
    $Res Function(_$ColorBackgroundDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BackgroundDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? tertiary = null,
    Object? positive = null,
    Object? negative = null,
    Object? neutral = null,
    Object? primaryBlurred = null,
    Object? sheetOverlay = null,
  }) {
    return _then(
      _$ColorBackgroundDesignTokensImpl(
        primary: null == primary
            ? _value.primary
            : primary // ignore: cast_nullable_to_non_nullable
                  as Color,
        secondary: null == secondary
            ? _value.secondary
            : secondary // ignore: cast_nullable_to_non_nullable
                  as Color,
        tertiary: null == tertiary
            ? _value.tertiary
            : tertiary // ignore: cast_nullable_to_non_nullable
                  as Color,
        positive: null == positive
            ? _value.positive
            : positive // ignore: cast_nullable_to_non_nullable
                  as Color,
        negative: null == negative
            ? _value.negative
            : negative // ignore: cast_nullable_to_non_nullable
                  as Color,
        neutral: null == neutral
            ? _value.neutral
            : neutral // ignore: cast_nullable_to_non_nullable
                  as Color,
        primaryBlurred: null == primaryBlurred
            ? _value.primaryBlurred
            : primaryBlurred // ignore: cast_nullable_to_non_nullable
                  as Color,
        sheetOverlay: null == sheetOverlay
            ? _value.sheetOverlay
            : sheetOverlay // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorBackgroundDesignTokensImpl implements ColorBackgroundDesignTokens {
  const _$ColorBackgroundDesignTokensImpl({
    this.primary = const Color(0xffffffff),
    this.secondary = const Color(0xffeeeeee),
    this.tertiary = const Color(0xfff7f7f7),
    this.positive = const Color(0xffdef3ef),
    this.negative = const Color(0xffffe3e3),
    this.neutral = const Color(0xffe5f4fc),
    this.primaryBlurred = const Color(0xb3ffffff),
    this.sheetOverlay = const Color(0xb3818488),
  });

  @override
  @JsonKey()
  final Color primary;
  @override
  @JsonKey()
  final Color secondary;
  @override
  @JsonKey()
  final Color tertiary;
  @override
  @JsonKey()
  final Color positive;
  @override
  @JsonKey()
  final Color negative;
  @override
  @JsonKey()
  final Color neutral;
  @override
  @JsonKey()
  final Color primaryBlurred;
  @override
  @JsonKey()
  final Color sheetOverlay;

  @override
  String toString() {
    return 'BackgroundDesignTokens.color(primary: $primary, secondary: $secondary, tertiary: $tertiary, positive: $positive, negative: $negative, neutral: $neutral, primaryBlurred: $primaryBlurred, sheetOverlay: $sheetOverlay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorBackgroundDesignTokensImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.tertiary, tertiary) ||
                other.tertiary == tertiary) &&
            (identical(other.positive, positive) ||
                other.positive == positive) &&
            (identical(other.negative, negative) ||
                other.negative == negative) &&
            (identical(other.neutral, neutral) || other.neutral == neutral) &&
            (identical(other.primaryBlurred, primaryBlurred) ||
                other.primaryBlurred == primaryBlurred) &&
            (identical(other.sheetOverlay, sheetOverlay) ||
                other.sheetOverlay == sheetOverlay));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    primary,
    secondary,
    tertiary,
    positive,
    negative,
    neutral,
    primaryBlurred,
    sheetOverlay,
  );

  /// Create a copy of BackgroundDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorBackgroundDesignTokensImplCopyWith<_$ColorBackgroundDesignTokensImpl>
  get copyWith =>
      __$$ColorBackgroundDesignTokensImplCopyWithImpl<
        _$ColorBackgroundDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )
    color,
  }) {
    return color(
      primary,
      secondary,
      tertiary,
      positive,
      negative,
      neutral,
      primaryBlurred,
      sheetOverlay,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )?
    color,
  }) {
    return color?.call(
      primary,
      secondary,
      tertiary,
      positive,
      negative,
      neutral,
      primaryBlurred,
      sheetOverlay,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color positive,
      Color negative,
      Color neutral,
      Color primaryBlurred,
      Color sheetOverlay,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(
        primary,
        secondary,
        tertiary,
        positive,
        negative,
        neutral,
        primaryBlurred,
        sheetOverlay,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorBackgroundDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorBackgroundDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorBackgroundDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorBackgroundDesignTokens implements BackgroundDesignTokens {
  const factory ColorBackgroundDesignTokens({
    final Color primary,
    final Color secondary,
    final Color tertiary,
    final Color positive,
    final Color negative,
    final Color neutral,
    final Color primaryBlurred,
    final Color sheetOverlay,
  }) = _$ColorBackgroundDesignTokensImpl;

  @override
  Color get primary;
  @override
  Color get secondary;
  @override
  Color get tertiary;
  @override
  Color get positive;
  @override
  Color get negative;
  @override
  Color get neutral;
  @override
  Color get primaryBlurred;
  @override
  Color get sheetOverlay;

  /// Create a copy of BackgroundDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorBackgroundDesignTokensImplCopyWith<_$ColorBackgroundDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentDesignTokens {
  Color get primary => throw _privateConstructorUsedError;
  Color get secondary => throw _privateConstructorUsedError;
  Color get tertiary => throw _privateConstructorUsedError;
  Color get success => throw _privateConstructorUsedError;
  Color get opposite => throw _privateConstructorUsedError;
  Color get error => throw _privateConstructorUsedError;
  Color get disabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorContentDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorContentDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorContentDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ContentDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentDesignTokensCopyWith<ContentDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDesignTokensCopyWith<$Res> {
  factory $ContentDesignTokensCopyWith(
    ContentDesignTokens value,
    $Res Function(ContentDesignTokens) then,
  ) = _$ContentDesignTokensCopyWithImpl<$Res, ContentDesignTokens>;
  @useResult
  $Res call({
    Color primary,
    Color secondary,
    Color tertiary,
    Color success,
    Color opposite,
    Color error,
    Color disabled,
  });
}

/// @nodoc
class _$ContentDesignTokensCopyWithImpl<$Res, $Val extends ContentDesignTokens>
    implements $ContentDesignTokensCopyWith<$Res> {
  _$ContentDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? tertiary = null,
    Object? success = null,
    Object? opposite = null,
    Object? error = null,
    Object? disabled = null,
  }) {
    return _then(
      _value.copyWith(
            primary: null == primary
                ? _value.primary
                : primary // ignore: cast_nullable_to_non_nullable
                      as Color,
            secondary: null == secondary
                ? _value.secondary
                : secondary // ignore: cast_nullable_to_non_nullable
                      as Color,
            tertiary: null == tertiary
                ? _value.tertiary
                : tertiary // ignore: cast_nullable_to_non_nullable
                      as Color,
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as Color,
            opposite: null == opposite
                ? _value.opposite
                : opposite // ignore: cast_nullable_to_non_nullable
                      as Color,
            error: null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as Color,
            disabled: null == disabled
                ? _value.disabled
                : disabled // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorContentDesignTokensImplCopyWith<$Res>
    implements $ContentDesignTokensCopyWith<$Res> {
  factory _$$ColorContentDesignTokensImplCopyWith(
    _$ColorContentDesignTokensImpl value,
    $Res Function(_$ColorContentDesignTokensImpl) then,
  ) = __$$ColorContentDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Color primary,
    Color secondary,
    Color tertiary,
    Color success,
    Color opposite,
    Color error,
    Color disabled,
  });
}

/// @nodoc
class __$$ColorContentDesignTokensImplCopyWithImpl<$Res>
    extends
        _$ContentDesignTokensCopyWithImpl<$Res, _$ColorContentDesignTokensImpl>
    implements _$$ColorContentDesignTokensImplCopyWith<$Res> {
  __$$ColorContentDesignTokensImplCopyWithImpl(
    _$ColorContentDesignTokensImpl _value,
    $Res Function(_$ColorContentDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContentDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? tertiary = null,
    Object? success = null,
    Object? opposite = null,
    Object? error = null,
    Object? disabled = null,
  }) {
    return _then(
      _$ColorContentDesignTokensImpl(
        primary: null == primary
            ? _value.primary
            : primary // ignore: cast_nullable_to_non_nullable
                  as Color,
        secondary: null == secondary
            ? _value.secondary
            : secondary // ignore: cast_nullable_to_non_nullable
                  as Color,
        tertiary: null == tertiary
            ? _value.tertiary
            : tertiary // ignore: cast_nullable_to_non_nullable
                  as Color,
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as Color,
        opposite: null == opposite
            ? _value.opposite
            : opposite // ignore: cast_nullable_to_non_nullable
                  as Color,
        error: null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as Color,
        disabled: null == disabled
            ? _value.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorContentDesignTokensImpl implements ColorContentDesignTokens {
  const _$ColorContentDesignTokensImpl({
    this.primary = const Color(0xff0d0d0d),
    this.secondary = const Color(0xff545454),
    this.tertiary = const Color(0xff8d8d8d),
    this.success = const Color(0xff2d9a86),
    this.opposite = const Color(0xffffffff),
    this.error = const Color(0xfff36164),
    this.disabled = const Color(0xffdddddd),
  });

  @override
  @JsonKey()
  final Color primary;
  @override
  @JsonKey()
  final Color secondary;
  @override
  @JsonKey()
  final Color tertiary;
  @override
  @JsonKey()
  final Color success;
  @override
  @JsonKey()
  final Color opposite;
  @override
  @JsonKey()
  final Color error;
  @override
  @JsonKey()
  final Color disabled;

  @override
  String toString() {
    return 'ContentDesignTokens.color(primary: $primary, secondary: $secondary, tertiary: $tertiary, success: $success, opposite: $opposite, error: $error, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorContentDesignTokensImpl &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.tertiary, tertiary) ||
                other.tertiary == tertiary) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.opposite, opposite) ||
                other.opposite == opposite) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    primary,
    secondary,
    tertiary,
    success,
    opposite,
    error,
    disabled,
  );

  /// Create a copy of ContentDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorContentDesignTokensImplCopyWith<_$ColorContentDesignTokensImpl>
  get copyWith =>
      __$$ColorContentDesignTokensImplCopyWithImpl<
        _$ColorContentDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )
    color,
  }) {
    return color(
      primary,
      secondary,
      tertiary,
      success,
      opposite,
      error,
      disabled,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )?
    color,
  }) {
    return color?.call(
      primary,
      secondary,
      tertiary,
      success,
      opposite,
      error,
      disabled,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primary,
      Color secondary,
      Color tertiary,
      Color success,
      Color opposite,
      Color error,
      Color disabled,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(
        primary,
        secondary,
        tertiary,
        success,
        opposite,
        error,
        disabled,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorContentDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorContentDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorContentDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorContentDesignTokens implements ContentDesignTokens {
  const factory ColorContentDesignTokens({
    final Color primary,
    final Color secondary,
    final Color tertiary,
    final Color success,
    final Color opposite,
    final Color error,
    final Color disabled,
  }) = _$ColorContentDesignTokensImpl;

  @override
  Color get primary;
  @override
  Color get secondary;
  @override
  Color get tertiary;
  @override
  Color get success;
  @override
  Color get opposite;
  @override
  Color get error;
  @override
  Color get disabled;

  /// Create a copy of ContentDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorContentDesignTokensImplCopyWith<_$ColorContentDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurfaceDesignTokens {
  Color get almaty => throw _privateConstructorUsedError;
  Color get aktobe => throw _privateConstructorUsedError;
  Color get karagandaDark => throw _privateConstructorUsedError;
  Color get pavlodar => throw _privateConstructorUsedError;
  Color get almatyDark => throw _privateConstructorUsedError;
  Color get almatyLight => throw _privateConstructorUsedError;
  Color get astana => throw _privateConstructorUsedError;
  Color get karagandaLight => throw _privateConstructorUsedError;
  Color get semey => throw _privateConstructorUsedError;
  Color get semeyDark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorSurfaceDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorSurfaceDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorSurfaceDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of SurfaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurfaceDesignTokensCopyWith<SurfaceDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurfaceDesignTokensCopyWith<$Res> {
  factory $SurfaceDesignTokensCopyWith(
    SurfaceDesignTokens value,
    $Res Function(SurfaceDesignTokens) then,
  ) = _$SurfaceDesignTokensCopyWithImpl<$Res, SurfaceDesignTokens>;
  @useResult
  $Res call({
    Color almaty,
    Color aktobe,
    Color karagandaDark,
    Color pavlodar,
    Color almatyDark,
    Color almatyLight,
    Color astana,
    Color karagandaLight,
    Color semey,
    Color semeyDark,
  });
}

/// @nodoc
class _$SurfaceDesignTokensCopyWithImpl<$Res, $Val extends SurfaceDesignTokens>
    implements $SurfaceDesignTokensCopyWith<$Res> {
  _$SurfaceDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurfaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? almaty = null,
    Object? aktobe = null,
    Object? karagandaDark = null,
    Object? pavlodar = null,
    Object? almatyDark = null,
    Object? almatyLight = null,
    Object? astana = null,
    Object? karagandaLight = null,
    Object? semey = null,
    Object? semeyDark = null,
  }) {
    return _then(
      _value.copyWith(
            almaty: null == almaty
                ? _value.almaty
                : almaty // ignore: cast_nullable_to_non_nullable
                      as Color,
            aktobe: null == aktobe
                ? _value.aktobe
                : aktobe // ignore: cast_nullable_to_non_nullable
                      as Color,
            karagandaDark: null == karagandaDark
                ? _value.karagandaDark
                : karagandaDark // ignore: cast_nullable_to_non_nullable
                      as Color,
            pavlodar: null == pavlodar
                ? _value.pavlodar
                : pavlodar // ignore: cast_nullable_to_non_nullable
                      as Color,
            almatyDark: null == almatyDark
                ? _value.almatyDark
                : almatyDark // ignore: cast_nullable_to_non_nullable
                      as Color,
            almatyLight: null == almatyLight
                ? _value.almatyLight
                : almatyLight // ignore: cast_nullable_to_non_nullable
                      as Color,
            astana: null == astana
                ? _value.astana
                : astana // ignore: cast_nullable_to_non_nullable
                      as Color,
            karagandaLight: null == karagandaLight
                ? _value.karagandaLight
                : karagandaLight // ignore: cast_nullable_to_non_nullable
                      as Color,
            semey: null == semey
                ? _value.semey
                : semey // ignore: cast_nullable_to_non_nullable
                      as Color,
            semeyDark: null == semeyDark
                ? _value.semeyDark
                : semeyDark // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorSurfaceDesignTokensImplCopyWith<$Res>
    implements $SurfaceDesignTokensCopyWith<$Res> {
  factory _$$ColorSurfaceDesignTokensImplCopyWith(
    _$ColorSurfaceDesignTokensImpl value,
    $Res Function(_$ColorSurfaceDesignTokensImpl) then,
  ) = __$$ColorSurfaceDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Color almaty,
    Color aktobe,
    Color karagandaDark,
    Color pavlodar,
    Color almatyDark,
    Color almatyLight,
    Color astana,
    Color karagandaLight,
    Color semey,
    Color semeyDark,
  });
}

/// @nodoc
class __$$ColorSurfaceDesignTokensImplCopyWithImpl<$Res>
    extends
        _$SurfaceDesignTokensCopyWithImpl<$Res, _$ColorSurfaceDesignTokensImpl>
    implements _$$ColorSurfaceDesignTokensImplCopyWith<$Res> {
  __$$ColorSurfaceDesignTokensImplCopyWithImpl(
    _$ColorSurfaceDesignTokensImpl _value,
    $Res Function(_$ColorSurfaceDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SurfaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? almaty = null,
    Object? aktobe = null,
    Object? karagandaDark = null,
    Object? pavlodar = null,
    Object? almatyDark = null,
    Object? almatyLight = null,
    Object? astana = null,
    Object? karagandaLight = null,
    Object? semey = null,
    Object? semeyDark = null,
  }) {
    return _then(
      _$ColorSurfaceDesignTokensImpl(
        almaty: null == almaty
            ? _value.almaty
            : almaty // ignore: cast_nullable_to_non_nullable
                  as Color,
        aktobe: null == aktobe
            ? _value.aktobe
            : aktobe // ignore: cast_nullable_to_non_nullable
                  as Color,
        karagandaDark: null == karagandaDark
            ? _value.karagandaDark
            : karagandaDark // ignore: cast_nullable_to_non_nullable
                  as Color,
        pavlodar: null == pavlodar
            ? _value.pavlodar
            : pavlodar // ignore: cast_nullable_to_non_nullable
                  as Color,
        almatyDark: null == almatyDark
            ? _value.almatyDark
            : almatyDark // ignore: cast_nullable_to_non_nullable
                  as Color,
        almatyLight: null == almatyLight
            ? _value.almatyLight
            : almatyLight // ignore: cast_nullable_to_non_nullable
                  as Color,
        astana: null == astana
            ? _value.astana
            : astana // ignore: cast_nullable_to_non_nullable
                  as Color,
        karagandaLight: null == karagandaLight
            ? _value.karagandaLight
            : karagandaLight // ignore: cast_nullable_to_non_nullable
                  as Color,
        semey: null == semey
            ? _value.semey
            : semey // ignore: cast_nullable_to_non_nullable
                  as Color,
        semeyDark: null == semeyDark
            ? _value.semeyDark
            : semeyDark // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorSurfaceDesignTokensImpl implements ColorSurfaceDesignTokens {
  const _$ColorSurfaceDesignTokensImpl({
    this.almaty = const Color(0xff2d9a86),
    this.aktobe = const Color(0x1affffff),
    this.karagandaDark = const Color(0xe6282f34),
    this.pavlodar = const Color(0xfff36164),
    this.almatyDark = const Color(0xff095e71),
    this.almatyLight = const Color(0xff6fbeb7),
    this.astana = const Color(0xffeefe6d),
    this.karagandaLight = const Color(0xff8d8d8d),
    this.semey = const Color(0xff467fe5),
    this.semeyDark = const Color(0xff326aa5),
  });

  @override
  @JsonKey()
  final Color almaty;
  @override
  @JsonKey()
  final Color aktobe;
  @override
  @JsonKey()
  final Color karagandaDark;
  @override
  @JsonKey()
  final Color pavlodar;
  @override
  @JsonKey()
  final Color almatyDark;
  @override
  @JsonKey()
  final Color almatyLight;
  @override
  @JsonKey()
  final Color astana;
  @override
  @JsonKey()
  final Color karagandaLight;
  @override
  @JsonKey()
  final Color semey;
  @override
  @JsonKey()
  final Color semeyDark;

  @override
  String toString() {
    return 'SurfaceDesignTokens.color(almaty: $almaty, aktobe: $aktobe, karagandaDark: $karagandaDark, pavlodar: $pavlodar, almatyDark: $almatyDark, almatyLight: $almatyLight, astana: $astana, karagandaLight: $karagandaLight, semey: $semey, semeyDark: $semeyDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorSurfaceDesignTokensImpl &&
            (identical(other.almaty, almaty) || other.almaty == almaty) &&
            (identical(other.aktobe, aktobe) || other.aktobe == aktobe) &&
            (identical(other.karagandaDark, karagandaDark) ||
                other.karagandaDark == karagandaDark) &&
            (identical(other.pavlodar, pavlodar) ||
                other.pavlodar == pavlodar) &&
            (identical(other.almatyDark, almatyDark) ||
                other.almatyDark == almatyDark) &&
            (identical(other.almatyLight, almatyLight) ||
                other.almatyLight == almatyLight) &&
            (identical(other.astana, astana) || other.astana == astana) &&
            (identical(other.karagandaLight, karagandaLight) ||
                other.karagandaLight == karagandaLight) &&
            (identical(other.semey, semey) || other.semey == semey) &&
            (identical(other.semeyDark, semeyDark) ||
                other.semeyDark == semeyDark));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    almaty,
    aktobe,
    karagandaDark,
    pavlodar,
    almatyDark,
    almatyLight,
    astana,
    karagandaLight,
    semey,
    semeyDark,
  );

  /// Create a copy of SurfaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorSurfaceDesignTokensImplCopyWith<_$ColorSurfaceDesignTokensImpl>
  get copyWith =>
      __$$ColorSurfaceDesignTokensImplCopyWithImpl<
        _$ColorSurfaceDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )
    color,
  }) {
    return color(
      almaty,
      aktobe,
      karagandaDark,
      pavlodar,
      almatyDark,
      almatyLight,
      astana,
      karagandaLight,
      semey,
      semeyDark,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )?
    color,
  }) {
    return color?.call(
      almaty,
      aktobe,
      karagandaDark,
      pavlodar,
      almatyDark,
      almatyLight,
      astana,
      karagandaLight,
      semey,
      semeyDark,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color almaty,
      Color aktobe,
      Color karagandaDark,
      Color pavlodar,
      Color almatyDark,
      Color almatyLight,
      Color astana,
      Color karagandaLight,
      Color semey,
      Color semeyDark,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(
        almaty,
        aktobe,
        karagandaDark,
        pavlodar,
        almatyDark,
        almatyLight,
        astana,
        karagandaLight,
        semey,
        semeyDark,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorSurfaceDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorSurfaceDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorSurfaceDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorSurfaceDesignTokens implements SurfaceDesignTokens {
  const factory ColorSurfaceDesignTokens({
    final Color almaty,
    final Color aktobe,
    final Color karagandaDark,
    final Color pavlodar,
    final Color almatyDark,
    final Color almatyLight,
    final Color astana,
    final Color karagandaLight,
    final Color semey,
    final Color semeyDark,
  }) = _$ColorSurfaceDesignTokensImpl;

  @override
  Color get almaty;
  @override
  Color get aktobe;
  @override
  Color get karagandaDark;
  @override
  Color get pavlodar;
  @override
  Color get almatyDark;
  @override
  Color get almatyLight;
  @override
  Color get astana;
  @override
  Color get karagandaLight;
  @override
  Color get semey;
  @override
  Color get semeyDark;

  /// Create a copy of SurfaceDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorSurfaceDesignTokensImplCopyWith<_$ColorSurfaceDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaseDesignTokens {
  Color get red => throw _privateConstructorUsedError;
  Color get greenMedium => throw _privateConstructorUsedError;
  Color get white => throw _privateConstructorUsedError;
  Color get greyLight => throw _privateConstructorUsedError;
  Color get greyMedium => throw _privateConstructorUsedError;
  Color get greyDark => throw _privateConstructorUsedError;
  Color get greenDark => throw _privateConstructorUsedError;
  Color get yellow => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorBaseDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorBaseDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorBaseDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of BaseDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseDesignTokensCopyWith<BaseDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseDesignTokensCopyWith<$Res> {
  factory $BaseDesignTokensCopyWith(
    BaseDesignTokens value,
    $Res Function(BaseDesignTokens) then,
  ) = _$BaseDesignTokensCopyWithImpl<$Res, BaseDesignTokens>;
  @useResult
  $Res call({
    Color red,
    Color greenMedium,
    Color white,
    Color greyLight,
    Color greyMedium,
    Color greyDark,
    Color greenDark,
    Color yellow,
  });
}

/// @nodoc
class _$BaseDesignTokensCopyWithImpl<$Res, $Val extends BaseDesignTokens>
    implements $BaseDesignTokensCopyWith<$Res> {
  _$BaseDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? greenMedium = null,
    Object? white = null,
    Object? greyLight = null,
    Object? greyMedium = null,
    Object? greyDark = null,
    Object? greenDark = null,
    Object? yellow = null,
  }) {
    return _then(
      _value.copyWith(
            red: null == red
                ? _value.red
                : red // ignore: cast_nullable_to_non_nullable
                      as Color,
            greenMedium: null == greenMedium
                ? _value.greenMedium
                : greenMedium // ignore: cast_nullable_to_non_nullable
                      as Color,
            white: null == white
                ? _value.white
                : white // ignore: cast_nullable_to_non_nullable
                      as Color,
            greyLight: null == greyLight
                ? _value.greyLight
                : greyLight // ignore: cast_nullable_to_non_nullable
                      as Color,
            greyMedium: null == greyMedium
                ? _value.greyMedium
                : greyMedium // ignore: cast_nullable_to_non_nullable
                      as Color,
            greyDark: null == greyDark
                ? _value.greyDark
                : greyDark // ignore: cast_nullable_to_non_nullable
                      as Color,
            greenDark: null == greenDark
                ? _value.greenDark
                : greenDark // ignore: cast_nullable_to_non_nullable
                      as Color,
            yellow: null == yellow
                ? _value.yellow
                : yellow // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorBaseDesignTokensImplCopyWith<$Res>
    implements $BaseDesignTokensCopyWith<$Res> {
  factory _$$ColorBaseDesignTokensImplCopyWith(
    _$ColorBaseDesignTokensImpl value,
    $Res Function(_$ColorBaseDesignTokensImpl) then,
  ) = __$$ColorBaseDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Color red,
    Color greenMedium,
    Color white,
    Color greyLight,
    Color greyMedium,
    Color greyDark,
    Color greenDark,
    Color yellow,
  });
}

/// @nodoc
class __$$ColorBaseDesignTokensImplCopyWithImpl<$Res>
    extends _$BaseDesignTokensCopyWithImpl<$Res, _$ColorBaseDesignTokensImpl>
    implements _$$ColorBaseDesignTokensImplCopyWith<$Res> {
  __$$ColorBaseDesignTokensImplCopyWithImpl(
    _$ColorBaseDesignTokensImpl _value,
    $Res Function(_$ColorBaseDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? greenMedium = null,
    Object? white = null,
    Object? greyLight = null,
    Object? greyMedium = null,
    Object? greyDark = null,
    Object? greenDark = null,
    Object? yellow = null,
  }) {
    return _then(
      _$ColorBaseDesignTokensImpl(
        red: null == red
            ? _value.red
            : red // ignore: cast_nullable_to_non_nullable
                  as Color,
        greenMedium: null == greenMedium
            ? _value.greenMedium
            : greenMedium // ignore: cast_nullable_to_non_nullable
                  as Color,
        white: null == white
            ? _value.white
            : white // ignore: cast_nullable_to_non_nullable
                  as Color,
        greyLight: null == greyLight
            ? _value.greyLight
            : greyLight // ignore: cast_nullable_to_non_nullable
                  as Color,
        greyMedium: null == greyMedium
            ? _value.greyMedium
            : greyMedium // ignore: cast_nullable_to_non_nullable
                  as Color,
        greyDark: null == greyDark
            ? _value.greyDark
            : greyDark // ignore: cast_nullable_to_non_nullable
                  as Color,
        greenDark: null == greenDark
            ? _value.greenDark
            : greenDark // ignore: cast_nullable_to_non_nullable
                  as Color,
        yellow: null == yellow
            ? _value.yellow
            : yellow // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorBaseDesignTokensImpl implements ColorBaseDesignTokens {
  const _$ColorBaseDesignTokensImpl({
    this.red = const Color(0xfff36164),
    this.greenMedium = const Color(0xff2d9a86),
    this.white = const Color(0xffffffff),
    this.greyLight = const Color(0xffdddddd),
    this.greyMedium = const Color(0xff8d8d8d),
    this.greyDark = const Color(0xff545454),
    this.greenDark = const Color(0xff095e71),
    this.yellow = const Color(0xffeefe6d),
  });

  @override
  @JsonKey()
  final Color red;
  @override
  @JsonKey()
  final Color greenMedium;
  @override
  @JsonKey()
  final Color white;
  @override
  @JsonKey()
  final Color greyLight;
  @override
  @JsonKey()
  final Color greyMedium;
  @override
  @JsonKey()
  final Color greyDark;
  @override
  @JsonKey()
  final Color greenDark;
  @override
  @JsonKey()
  final Color yellow;

  @override
  String toString() {
    return 'BaseDesignTokens.color(red: $red, greenMedium: $greenMedium, white: $white, greyLight: $greyLight, greyMedium: $greyMedium, greyDark: $greyDark, greenDark: $greenDark, yellow: $yellow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorBaseDesignTokensImpl &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.greenMedium, greenMedium) ||
                other.greenMedium == greenMedium) &&
            (identical(other.white, white) || other.white == white) &&
            (identical(other.greyLight, greyLight) ||
                other.greyLight == greyLight) &&
            (identical(other.greyMedium, greyMedium) ||
                other.greyMedium == greyMedium) &&
            (identical(other.greyDark, greyDark) ||
                other.greyDark == greyDark) &&
            (identical(other.greenDark, greenDark) ||
                other.greenDark == greenDark) &&
            (identical(other.yellow, yellow) || other.yellow == yellow));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    red,
    greenMedium,
    white,
    greyLight,
    greyMedium,
    greyDark,
    greenDark,
    yellow,
  );

  /// Create a copy of BaseDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorBaseDesignTokensImplCopyWith<_$ColorBaseDesignTokensImpl>
  get copyWith =>
      __$$ColorBaseDesignTokensImplCopyWithImpl<_$ColorBaseDesignTokensImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )
    color,
  }) {
    return color(
      red,
      greenMedium,
      white,
      greyLight,
      greyMedium,
      greyDark,
      greenDark,
      yellow,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )?
    color,
  }) {
    return color?.call(
      red,
      greenMedium,
      white,
      greyLight,
      greyMedium,
      greyDark,
      greenDark,
      yellow,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color red,
      Color greenMedium,
      Color white,
      Color greyLight,
      Color greyMedium,
      Color greyDark,
      Color greenDark,
      Color yellow,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(
        red,
        greenMedium,
        white,
        greyLight,
        greyMedium,
        greyDark,
        greenDark,
        yellow,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorBaseDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorBaseDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorBaseDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorBaseDesignTokens implements BaseDesignTokens {
  const factory ColorBaseDesignTokens({
    final Color red,
    final Color greenMedium,
    final Color white,
    final Color greyLight,
    final Color greyMedium,
    final Color greyDark,
    final Color greenDark,
    final Color yellow,
  }) = _$ColorBaseDesignTokensImpl;

  @override
  Color get red;
  @override
  Color get greenMedium;
  @override
  Color get white;
  @override
  Color get greyLight;
  @override
  Color get greyMedium;
  @override
  Color get greyDark;
  @override
  Color get greenDark;
  @override
  Color get yellow;

  /// Create a copy of BaseDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorBaseDesignTokensImplCopyWith<_$ColorBaseDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StrokeDesignTokens {
  Color get disabled => throw _privateConstructorUsedError;
  Color get $default => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color disabled, Color $default) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color disabled, Color $default)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color disabled, Color $default)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorStrokeDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorStrokeDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorStrokeDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of StrokeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrokeDesignTokensCopyWith<StrokeDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrokeDesignTokensCopyWith<$Res> {
  factory $StrokeDesignTokensCopyWith(
    StrokeDesignTokens value,
    $Res Function(StrokeDesignTokens) then,
  ) = _$StrokeDesignTokensCopyWithImpl<$Res, StrokeDesignTokens>;
  @useResult
  $Res call({Color disabled, Color $default});
}

/// @nodoc
class _$StrokeDesignTokensCopyWithImpl<$Res, $Val extends StrokeDesignTokens>
    implements $StrokeDesignTokensCopyWith<$Res> {
  _$StrokeDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrokeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? disabled = null, Object? $default = null}) {
    return _then(
      _value.copyWith(
            disabled: null == disabled
                ? _value.disabled
                : disabled // ignore: cast_nullable_to_non_nullable
                      as Color,
            $default: null == $default
                ? _value.$default
                : $default // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorStrokeDesignTokensImplCopyWith<$Res>
    implements $StrokeDesignTokensCopyWith<$Res> {
  factory _$$ColorStrokeDesignTokensImplCopyWith(
    _$ColorStrokeDesignTokensImpl value,
    $Res Function(_$ColorStrokeDesignTokensImpl) then,
  ) = __$$ColorStrokeDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color disabled, Color $default});
}

/// @nodoc
class __$$ColorStrokeDesignTokensImplCopyWithImpl<$Res>
    extends
        _$StrokeDesignTokensCopyWithImpl<$Res, _$ColorStrokeDesignTokensImpl>
    implements _$$ColorStrokeDesignTokensImplCopyWith<$Res> {
  __$$ColorStrokeDesignTokensImplCopyWithImpl(
    _$ColorStrokeDesignTokensImpl _value,
    $Res Function(_$ColorStrokeDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StrokeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? disabled = null, Object? $default = null}) {
    return _then(
      _$ColorStrokeDesignTokensImpl(
        disabled: null == disabled
            ? _value.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as Color,
        $default: null == $default
            ? _value.$default
            : $default // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorStrokeDesignTokensImpl implements ColorStrokeDesignTokens {
  const _$ColorStrokeDesignTokensImpl({
    this.disabled = const Color(0xffdddddd),
    this.$default = const Color(0xff545454),
  });

  @override
  @JsonKey()
  final Color disabled;
  @override
  @JsonKey()
  final Color $default;

  @override
  String toString() {
    return 'StrokeDesignTokens.color(disabled: $disabled, \$default: ${$default})';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorStrokeDesignTokensImpl &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.$default, $default) ||
                other.$default == $default));
  }

  @override
  int get hashCode => Object.hash(runtimeType, disabled, $default);

  /// Create a copy of StrokeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorStrokeDesignTokensImplCopyWith<_$ColorStrokeDesignTokensImpl>
  get copyWith =>
      __$$ColorStrokeDesignTokensImplCopyWithImpl<
        _$ColorStrokeDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Color disabled, Color $default) color,
  }) {
    return color(disabled, $default);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Color disabled, Color $default)? color,
  }) {
    return color?.call(disabled, $default);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Color disabled, Color $default)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(disabled, $default);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorStrokeDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorStrokeDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorStrokeDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorStrokeDesignTokens implements StrokeDesignTokens {
  const factory ColorStrokeDesignTokens({
    final Color disabled,
    final Color $default,
  }) = _$ColorStrokeDesignTokensImpl;

  @override
  Color get disabled;
  @override
  Color get $default;

  /// Create a copy of StrokeDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorStrokeDesignTokensImplCopyWith<_$ColorStrokeDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ButtonDesignTokens {
  Color get primaryDefault => throw _privateConstructorUsedError;
  Color get primaryPressed => throw _privateConstructorUsedError;

  Color get disabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primaryDefault,
      Color primaryPressed,
      Color disabled,
    )
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primaryDefault,
      Color primaryPressed,

      Color disabled,
    )?
    color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primaryDefault,
      Color primaryPressed,

      Color disabled,
    )?
    color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorButtonDesignTokens value) color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorButtonDesignTokens value)? color,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorButtonDesignTokens value)? color,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ButtonDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtonDesignTokensCopyWith<ButtonDesignTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonDesignTokensCopyWith<$Res> {
  factory $ButtonDesignTokensCopyWith(
    ButtonDesignTokens value,
    $Res Function(ButtonDesignTokens) then,
  ) = _$ButtonDesignTokensCopyWithImpl<$Res, ButtonDesignTokens>;
  @useResult
  $Res call({Color primaryDefault, Color primaryPressed, Color disabled});
}

/// @nodoc
class _$ButtonDesignTokensCopyWithImpl<$Res, $Val extends ButtonDesignTokens>
    implements $ButtonDesignTokensCopyWith<$Res> {
  _$ButtonDesignTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtonDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryDefault = null,
    Object? primaryPressed = null,

    Object? disabled = null,
  }) {
    return _then(
      _value.copyWith(
            primaryDefault: null == primaryDefault
                ? _value.primaryDefault
                : primaryDefault // ignore: cast_nullable_to_non_nullable
                      as Color,
            primaryPressed: null == primaryPressed
                ? _value.primaryPressed
                : primaryPressed // ignore: cast_nullable_to_non_nullable
                      as Color,

            disabled: null == disabled
                ? _value.disabled
                : disabled // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorButtonDesignTokensImplCopyWith<$Res>
    implements $ButtonDesignTokensCopyWith<$Res> {
  factory _$$ColorButtonDesignTokensImplCopyWith(
    _$ColorButtonDesignTokensImpl value,
    $Res Function(_$ColorButtonDesignTokensImpl) then,
  ) = __$$ColorButtonDesignTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color primaryDefault, Color primaryPressed, Color disabled});
}

/// @nodoc
class __$$ColorButtonDesignTokensImplCopyWithImpl<$Res>
    extends
        _$ButtonDesignTokensCopyWithImpl<$Res, _$ColorButtonDesignTokensImpl>
    implements _$$ColorButtonDesignTokensImplCopyWith<$Res> {
  __$$ColorButtonDesignTokensImplCopyWithImpl(
    _$ColorButtonDesignTokensImpl _value,
    $Res Function(_$ColorButtonDesignTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ButtonDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primaryDefault = null,
    Object? primaryPressed = null,

    Object? disabled = null,
  }) {
    return _then(
      _$ColorButtonDesignTokensImpl(
        primaryDefault: null == primaryDefault
            ? _value.primaryDefault
            : primaryDefault // ignore: cast_nullable_to_non_nullable
                  as Color,
        primaryPressed: null == primaryPressed
            ? _value.primaryPressed
            : primaryPressed // ignore: cast_nullable_to_non_nullable
                  as Color,

        disabled: null == disabled
            ? _value.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$ColorButtonDesignTokensImpl implements ColorButtonDesignTokens {
  const _$ColorButtonDesignTokensImpl({
    this.primaryDefault = const Color(0xff2D7BFF),
    this.primaryPressed = const Color(0xff204b59),
    this.disabled = const Color(0xffdddddd),
  });

  @override
  @JsonKey()
  final Color primaryDefault;
  @override
  @JsonKey()
  final Color primaryPressed;
  @override
  @JsonKey()
  final Color disabled;

  @override
  String toString() {
    return 'ButtonDesignTokens.color(primaryDefault: $primaryDefault, primaryPressed: $primaryPressed,  disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorButtonDesignTokensImpl &&
            (identical(other.primaryDefault, primaryDefault) ||
                other.primaryDefault == primaryDefault) &&
            (identical(other.primaryPressed, primaryPressed) ||
                other.primaryPressed == primaryPressed) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, primaryDefault, primaryPressed, disabled);

  /// Create a copy of ButtonDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorButtonDesignTokensImplCopyWith<_$ColorButtonDesignTokensImpl>
  get copyWith =>
      __$$ColorButtonDesignTokensImplCopyWithImpl<
        _$ColorButtonDesignTokensImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      Color primaryDefault,
      Color primaryPressed,
      Color disabled,
    )
    color,
  }) {
    return color(primaryDefault, primaryPressed, disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      Color primaryDefault,
      Color primaryPressed,
      Color disabled,
    )?
    color,
  }) {
    return color?.call(primaryDefault, primaryPressed, disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      Color primaryDefault,
      Color primaryPressed,

      Color disabled,
    )?
    color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(primaryDefault, primaryPressed, disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ColorButtonDesignTokens value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorButtonDesignTokens value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorButtonDesignTokens value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class ColorButtonDesignTokens implements ButtonDesignTokens {
  const factory ColorButtonDesignTokens({
    final Color primaryDefault,
    final Color primaryPressed,
    final Color disabled,
  }) = _$ColorButtonDesignTokensImpl;

  @override
  Color get primaryDefault;
  @override
  Color get primaryPressed;
  @override
  Color get disabled;

  /// Create a copy of ButtonDesignTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorButtonDesignTokensImplCopyWith<_$ColorButtonDesignTokensImpl>
  get copyWith => throw _privateConstructorUsedError;
}
