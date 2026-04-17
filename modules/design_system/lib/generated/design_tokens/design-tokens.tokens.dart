// GENERATED, DO NOT EDIT

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'design-tokens.tokens.freezed.dart';
part 'design-tokens.tokens.extensions.dart';

@freezed
class DesignKitVariables with _$DesignKitVariables {
  const factory DesignKitVariables.space({
    @Default(SpaceDesignTokens.space()) SpaceDesignTokens space,
  }) = SpaceDesignKitVariables;

  const factory DesignKitVariables.radius({
    @Default(RadiusDesignTokens.radius()) RadiusDesignTokens radius,
  }) = RadiusDesignKitVariables;

  const factory DesignKitVariables.size({
    @Default(SizeDesignTokens.size()) SizeDesignTokens size,
  }) = SizeDesignKitVariables;

  const factory DesignKitVariables.color({
    @Default(BackgroundDesignTokens.color()) BackgroundDesignTokens background,
    @Default(ContentDesignTokens.color()) ContentDesignTokens content,
    @Default(SurfaceDesignTokens.color()) SurfaceDesignTokens surface,
    @Default(BaseDesignTokens.color()) BaseDesignTokens base,
    @Default(StrokeDesignTokens.color()) StrokeDesignTokens stroke,
    @Default(ButtonDesignTokens.color()) ButtonDesignTokens button,
  }) = ColorDesignKitVariables;
}

@freezed
class SpaceDesignTokens with _$SpaceDesignTokens {
  const factory SpaceDesignTokens.space({
    @Default(0) double x0,
    @Default(2) double x2,
    @Default(4) double x4,
    @Default(8) double x8,
    @Default(12) double x12,
    @Default(16) double x16,
    @Default(20) double x20,
    @Default(24) double x24,
    @Default(28) double x28,
    @Default(32) double x32,
  }) = SpaceSpaceDesignTokens;
}

@freezed
class RadiusDesignTokens with _$RadiusDesignTokens {
  const factory RadiusDesignTokens.radius({
    @Default(12) double x12,
    @Default(28) double x28,
    @Default(32) double x32,
  }) = RadiusRadiusDesignTokens;
}

@freezed
class SizeDesignTokens with _$SizeDesignTokens {
  const factory SizeDesignTokens.size({
    @Default(2) double x2,
    @Default(4) double x4,
    @Default(8) double x8,
    @Default(16) double x16,
    @Default(20) double x20,
    @Default(24) double x24,
    @Default(28) double x28,
    @Default(32) double x32,
    @Default(40) double x40,
    @Default(44) double x44,
    @Default(56) double x56,
    @Default(64) double x64,
    @Default(328) double x328,
    @Default(360) double x360,
    @Default(800) double x800,
  }) = SizeSizeDesignTokens;
}

@freezed
class BackgroundDesignTokens with _$BackgroundDesignTokens {
  const factory BackgroundDesignTokens.color({
    @Default(Color(0xffffffff)) Color primary,
    @Default(Color(0xffeeeeee)) Color secondary,
    @Default(Color(0xfff7f7f7)) Color tertiary,
    @Default(Color(0xffdef3ef)) Color positive,
    @Default(Color(0xffffe3e3)) Color negative,
    @Default(Color(0xffe5f4fc)) Color neutral,
    @Default(Color(0xb3ffffff)) Color primaryBlurred,
    @Default(Color(0xb3818488)) Color sheetOverlay,
  }) = ColorBackgroundDesignTokens;
}

@freezed
class ContentDesignTokens with _$ContentDesignTokens {
  const factory ContentDesignTokens.color({
    @Default(Color(0xff0d0d0d)) Color primary,
    @Default(Color(0xff545454)) Color secondary,
    @Default(Color(0xff8d8d8d)) Color tertiary,
    @Default(Color(0xff2d9a86)) Color success,
    @Default(Color(0xffffffff)) Color opposite,
    @Default(Color(0xfff36164)) Color error,
    @Default(Color(0xffdddddd)) Color disabled,
  }) = ColorContentDesignTokens;
}

@freezed
class SurfaceDesignTokens with _$SurfaceDesignTokens {
  const factory SurfaceDesignTokens.color({
    @Default(Color(0xff2d9a86)) Color almaty,
    @Default(Color(0x1affffff)) Color aktobe,
    @Default(Color(0xe6282f34)) Color karagandaDark,
    @Default(Color(0xfff36164)) Color pavlodar,
    @Default(Color(0xff095e71)) Color almatyDark,
    @Default(Color(0xff6fbeb7)) Color almatyLight,
    @Default(Color(0xffeefe6d)) Color astana,
    @Default(Color(0xff8d8d8d)) Color karagandaLight,
    @Default(Color(0xff467fe5)) Color semey,
    @Default(Color(0xff326aa5)) Color semeyDark,
  }) = ColorSurfaceDesignTokens;
}

@freezed
class BaseDesignTokens with _$BaseDesignTokens {
  const factory BaseDesignTokens.color({
    @Default(Color(0xfff36164)) Color red,
    @Default(Color(0xff2d9a86)) Color greenMedium,
    @Default(Color(0xffffffff)) Color white,
    @Default(Color(0xffdddddd)) Color greyLight,
    @Default(Color(0xff8d8d8d)) Color greyMedium,
    @Default(Color(0xff545454)) Color greyDark,
    @Default(Color(0xff095e71)) Color greenDark,
    @Default(Color(0xffeefe6d)) Color yellow,
  }) = ColorBaseDesignTokens;
}

@freezed
class StrokeDesignTokens with _$StrokeDesignTokens {
  const factory StrokeDesignTokens.color({
    @Default(Color(0xffdddddd)) Color disabled,
    @Default(Color(0xff545454)) Color $default,
  }) = ColorStrokeDesignTokens;
}

@freezed
class ButtonDesignTokens with _$ButtonDesignTokens {
  const factory ButtonDesignTokens.color({
    @Default(Color(0xff2D7BFF)) Color primaryDefault,
    @Default(Color(0xff204b59)) Color primaryPressed,
    @Default(Color(0xffdddddd)) Color disabled,
  }) = ColorButtonDesignTokens;
}
