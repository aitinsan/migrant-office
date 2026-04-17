import 'package:applications/src/applications/domain/models/application.dart';
import 'package:applications/src/applications/presentation/widgets/application_row_widget.dart';
import 'package:applications/src/applications/presentation/widgets/applications_table_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ApplicationTableWidget extends StatelessWidget {
  const ApplicationTableWidget({
    super.key,
    required this.applications,
    this.scrollController,
    this.isLoading = false,
  });
  final bool isLoading;
  final List<Application> applications;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: ApplicationsTableHeaderWidget(),
        ),
        Expanded(
          child: applications.isEmpty
              ? const Center(child: Text('No applications found'))
              : ListView.separated(
                  physics: AlwaysScrollableScrollPhysics(),
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  itemCount: isLoading
                      ? applications.length + 1
                      : applications.length,
                  separatorBuilder: (_, _) =>
                      const Divider(height: 1, color: Color(0xFFE5E7EB)),
                  itemBuilder: (context, index) {
                    if (index == applications.length) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 64.0),
                        child: Center(
                          child: NomadeeCircularProgressIndicator(size: 50),
                        ),
                      );
                    }
                    return ApplicationRowWidget(
                      client: applications[index],
                      index: index,
                    );
                  },
                ),
        ),
      ],
    );
  }
}
