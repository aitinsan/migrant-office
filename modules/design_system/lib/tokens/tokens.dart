import 'package:design_system/generated/design_tokens/design-tokens.tokens.dart';
import 'package:design_system/tokens/gradient_variables.dart';
import 'package:design_system/tokens/shadow_variables.dart';
import 'package:design_system/tokens/typography_variables.dart';
import 'package:flutter/material.dart';

class DesignTokens extends InheritedWidget {
  const DesignTokens({
    required super.child,
    this.color = const DesignKitVariables.color() as ColorDesignKitVariables,
    this.space = const DesignKitVariables.space() as SpaceDesignKitVariables,
    this.radius = const DesignKitVariables.radius() as RadiusDesignKitVariables,
    this.size = const DesignKitVariables.size() as SizeDesignKitVariables,
    this.typography = const TypographyVariables(),
    super.key,
  });

  final ColorDesignKitVariables color;
  final SpaceDesignKitVariables space;
  final RadiusDesignKitVariables radius;
  final SizeDesignKitVariables size;
  final TypographyVariables typography;

  static DesignTokens of(BuildContext context) {
    final tokens = context.dependOnInheritedWidgetOfExactType<DesignTokens>();
    assert(tokens != null, 'DesignTokens not found in context');
    return tokens!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

extension DesignTokensExtension on BuildContext {
  DesignTokens get designTokens => DesignTokens.of(this);

  ColorDesignKitVariables get colors => DesignTokens.of(this).color;

  SpaceDesignTokens get spaces => DesignTokens.of(this).space.space;

  RadiusDesignTokens get radiuses => DesignTokens.of(this).radius.radius;

  SizeDesignTokens get sizes => DesignTokens.of(this).size.size;

  TypographyVariables get typography => DesignTokens.of(this).typography;

  ThemeData get theme => Theme.of(this);

  ShadowVariables get shadows => ShadowVariables();

  GradientVariables get gradients => GradientVariables();
}
