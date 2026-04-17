import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key, required this.authBloc});

  final AuthBloc authBloc;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> with _AuthFormStateMixin {
  @override
  Widget build(BuildContext context) {
    final m3Typography = context.theme.textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: BlocBuilder<AuthBloc, AuthState>(
        bloc: widget.authBloc,
        builder: (context, state) {
          final error = state.failure;
          final enabled = !state.isProcessing;

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 8,
                  top: 16,
                  bottom: 10,
                ),
                child: Text(
                  'Sign up in Nomadee',
                  style: m3Typography.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: 24,
                  top: 12,
                ),
                child: Column(
                  spacing: 32,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ValueListenableBuilder(
                      valueListenable: _emailValid,
                      builder: (context, value, child) {
                        return TextField(
                          controller: _emailController,
                          enabled: enabled,
                          decoration: InputDecoration(
                            label: Text('Enter your email'),
                            errorText: value == false
                                ? 'Enter valid email'
                                : null,
                          ).applyDefaults(context.theme.inputDecorationTheme),
                        );
                      },
                    ),
                    ValueListenableBuilder(
                      valueListenable: _passwordValid,
                      builder: (context, value, child) => TextField(
                        controller: _passwordController,
                        enabled: enabled,
                        decoration: InputDecoration(
                          label: Text('Enter your password'),
                          errorText: value == false
                              ? 'Enter valid password'
                              : null,
                        ).applyDefaults(context.theme.inputDecorationTheme),
                      ),
                    ),
                  ],
                ),
              ),
              if (error != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ).copyWith(top: 12),
                  child: ColoredBox(
                    color: Color(0xFFFFE3E3),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Invalid email or password',
                        style: m3Typography.bodyLarge?.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ).copyWith(top: 12),
                child: Text(
                  'Having trouble? Contact your manager: +9 999 999 999 99',
                  style: m3Typography.bodyLarge?.copyWith(
                    color: Color(0xFF8D8D8D),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24).copyWith(top: 16),
                child: ElevatedButton(
                        onPressed: enabled ? _onSubmit : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.button.primaryDefault,
                          foregroundColor: Colors.white,
                          minimumSize: Size.fromHeight(56),
                          elevation: 0,
                        ),
                        child: !enabled
                            ? const SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              )
                            : const Text('Continue'),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

mixin _AuthFormStateMixin on State<AuthForm> {
  // #region Email

  final TextEditingController _emailController = TextEditingController(
    text: kDebugMode ? 'test@example.com' : null,
  );

  final ValueNotifier<bool?> _emailValid = ValueNotifier(null);

  bool _validateEmail(String value) {
    if (value.isEmpty) return false;

    final regExp = RegExp(
      r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)',
    );
    return regExp.hasMatch(value);
  }

  // #endregion

  // #region Password

  final TextEditingController _passwordController = TextEditingController(
    text: kDebugMode ? 'test@example.com' : null,
  );

  final ValueNotifier<bool?> _passwordValid = ValueNotifier(null);

  bool _validatePassword(String value) {
    return value.isNotEmpty;
  }

  // #endregion

  // #region Submit

  void _onSubmit() {
    _emailValid.value = null;
    _passwordValid.value = null;

    final email = _emailController.text;
    final password = _passwordController.text;

    _emailValid.value = _validateEmail(email);
    _passwordValid.value = _validatePassword(password);

    if (_emailValid.value == true && _passwordValid.value == true) {
      widget.authBloc.add(AuthEvent$SignIn(email: email, password: password));
    }
  }

  // #endregion
}
