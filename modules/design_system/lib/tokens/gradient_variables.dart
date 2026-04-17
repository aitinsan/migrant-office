import 'package:flutter/material.dart';

@immutable
class GradientVariables {
  LinearGradient get blueLinearGradient => const LinearGradient(
    colors: [Color(0xFF87D1E2), Color(0xFF4EA1B4)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  LinearGradient get lightBlueLinearGradient => const LinearGradient(
    colors: [Color(0xFFADDEE9), Color(0xFF61B2C4)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
