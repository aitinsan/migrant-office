import 'package:auth/auth.dart';
import 'package:auth/src/assets/generated/assets.gen.dart';
import 'package:auth/src/auth/presentation/auth_form.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, required this.router, required this.authBloc});

  final AuthRouter router;

  final AuthBloc authBloc;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Scaffold(
      backgroundColor: colors.button.primaryDefault,
      body: Stack(
        children: [
          SizedBox.expand(
            child: AuthAssets.images.nLetter.image(
              fit: BoxFit.cover,
              alignment: AlignmentGeometry.centerLeft,
            ),
          ),
          Positioned(
            left: 64,
            bottom: 56,
            child: AuthAssets.images.nomadeeLogoHorizontal.image(height: 86),
          ),
          Align(
            alignment: const Alignment(.5, .0),
            child: SizedBox(width: 533, child: AuthForm(authBloc: authBloc)),
          ),
        ],
      ),
    );
  }
}
