import 'package:design_system/assets/generated/fonts.gen.dart';
import 'package:flutter/material.dart';

// TODO(aleksey-zemtsov): Заменить на генерацию из JSON
@immutable
final class TypographyVariables {
  const TypographyVariables({
    this.h0 = const TextStyle(
      fontSize: 40,
      fontFamily: FontFamily.rubik,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      height: 44 / 40,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.h1 = const TextStyle(
      fontSize: 32,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 40 / 32,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.h2 = const TextStyle(
      fontSize: 24,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 28 / 24,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.h3 = const TextStyle(
      fontSize: 24,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 28 / 24,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.h4 = const TextStyle(
      fontSize: 18,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 22 / 18,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.bodyText = const TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 22 / 16,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.bodyTextMedium = const TextStyle(
      fontSize: 16,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 22 / 16,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.bodyTextSmall = const TextStyle(
      fontSize: 14,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 20 / 14,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.bodyTextSmallUnderline = const TextStyle(
      fontSize: 14,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.underline,
      letterSpacing: -0.25,
      height: 20 / 14,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.bodyTextSmallMedium = const TextStyle(
      fontSize: 14,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 20 / 14,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
    this.paragraph = const TextStyle(
      fontSize: 12,
      fontFamily: FontFamily.rubik,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.25,
      height: 16 / 12,
      leadingDistribution: TextLeadingDistribution.even,
      package: package,
    ),
  });

  final TextStyle h0;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle bodyText;
  final TextStyle bodyTextMedium;
  final TextStyle bodyTextSmall;
  final TextStyle bodyTextSmallUnderline;
  final TextStyle bodyTextSmallMedium;
  final TextStyle paragraph;

  static const package = 'design_system';
}
