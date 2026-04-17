import 'package:flutter/material.dart';

@immutable
class ShadowVariables {
  BoxShadow get topCardShadow => BoxShadow(
    color: Colors.black.withAlpha((255 * 0.1).round()),
    offset: const Offset(0, -4),
    blurRadius: 24,
  );
  BoxShadow get cellShadow => BoxShadow(
    color: Colors.black.withAlpha((255 * 0.1).round()),
    offset: const Offset(0, 3),
    blurRadius: 20,
  );
  BoxShadow get frameShadow => BoxShadow(
    color: Colors.black.withAlpha((255 * 0.1).round()),
    offset: const Offset(0, 4),
    blurRadius: 24,
  );
}
