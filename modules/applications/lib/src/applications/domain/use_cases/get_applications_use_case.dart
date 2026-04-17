import 'package:applications/src/applications/domain/models/applications_page.dart';
import 'package:core/core.dart';
import 'package:core/external_dependencies.dart' hide Result;

abstract interface class GetApplicationsUseCase {
  Future<Result<AppFailure, ApplicationsPage>> invoke(
    GetApplicationsUseCaseParams params,
  );
}

class GetApplicationsUseCaseParams extends Equatable {
  const GetApplicationsUseCaseParams({this.limit, this.cursor});

  final int? limit;
  final String? cursor;

  @override
  List<Object?> get props => [limit, cursor];
}
