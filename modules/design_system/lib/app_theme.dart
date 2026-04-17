import 'package:design_system/generated/design_tokens/design-tokens.tokens.dart';
import 'package:design_system/tokens/typography_variables.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData getTheme({
    required ColorDesignKitVariables colors,
    required TypographyVariables typography,
  }) => ThemeData(
    // useMaterial3: true,
    primarySwatch: Colors.red,
    canvasColor: colors.background.primary,
    scaffoldBackgroundColor: colors.background.primary,
    colorScheme: ColorScheme.light(
      primary: colors.content.primary,
      surface: colors.background.primary,
      secondary: colors.surface.karagandaDark,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 2,
      backgroundColor: colors.background.primary,
      centerTitle: true,
      titleTextStyle: typography.bodyTextMedium.copyWith(
        color: colors.content.primary,
      ),
      actionsIconTheme: IconThemeData(color: colors.content.primary),
    ),
    dialogTheme: DialogThemeData(backgroundColor: colors.background.primary),
    bottomSheetTheme: const BottomSheetThemeData(
      constraints: BoxConstraints(maxWidth: double.infinity),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: colors.content.secondary),
      errorStyle: TextStyle(color: colors.content.error),
      labelStyle: WidgetStateTextStyle.resolveWith((states) {
        final Color color;
        if (states.contains(WidgetState.error)) {
          color = colors.content.error;
        } else if (states.contains(WidgetState.disabled)){
          color = colors.content.disabled;
        } else {
          color = colors.content.tertiary;
        }

        return TextStyle(color: color);
      }),
      floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
        final Color color;
        if (states.contains(WidgetState.error)) {
          color = colors.content.error;
        } else if (states.contains(WidgetState.disabled)){
          color = colors.content.disabled;
        } else {
          color = colors.content.tertiary;
        }

        return TextStyle(color: color);
      }),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFF2563EB)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colors.content.error),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colors.content.error),
      ),
      filled: true,
      fillColor: Colors.white,
    ),
  );
}
