import 'package:design_system/components/snack_bar/snack_message.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  const Snack(this.message, {super.key});

  final SnackMessage message;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      color: context.colors.surface.karagandaDark.withAlpha(
        (0.9 * 255).round(),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                message.text,
                style: context.theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
