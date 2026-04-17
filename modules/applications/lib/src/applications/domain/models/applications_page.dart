import 'package:applications/src/applications/domain/models/application.dart';

class ApplicationsPage {
  final int total;
  final String? nextCursor;
  final List<Application> applications;

  const ApplicationsPage({
    required this.total,
    required this.applications,
    this.nextCursor,
  });
}
