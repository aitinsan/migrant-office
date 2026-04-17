import 'package:core/core.dart';

abstract interface class GetOnboardingAppLinkUseCase {
  Future<Result<AppFailure, String>> invoke(EmptyUseCaseParams params);
}
