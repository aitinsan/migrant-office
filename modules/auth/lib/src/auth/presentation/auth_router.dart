import 'package:flutter/material.dart';

abstract interface class AuthRouter {
  void showApplications(
    BuildContext context, {
    required void Function(BuildContext) onSuccess,
  });
}
