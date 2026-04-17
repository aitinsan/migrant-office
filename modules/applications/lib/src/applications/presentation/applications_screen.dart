import 'package:applications/src/applications/presentation/bloc/applications/applications_bloc.dart';
import 'package:applications/src/applications/presentation/bloc/create_application/create_application_bloc.dart';
import 'package:applications/src/applications/presentation/widgets/application_table_widget.dart';
import 'package:applications/src/applications/presentation/widgets/applications_buttons_widget.dart';
import 'package:applications/src/assets/generated/assets.gen.dart';
import 'package:core/core.dart';
import 'package:design_system/components/spacers/gap.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({
    super.key,
    required this.applicationsBloc,
    required this.createApplicationBloc,
    required this.onSignOut,
  });
  final Function() onSignOut;
  final ApplicationsBloc applicationsBloc;
  final CreateApplicationBloc createApplicationBloc;

  @override
  State<ApplicationsScreen> createState() => _ApplicationsScreenState();
}

class _ApplicationsScreenState extends State<ApplicationsScreen> {
  static const double _scrollThreshold = 200;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    widget.applicationsBloc.add(const ApplicationsEvent$LoadInitial());
    widget.applicationsBloc.add(const ApplicationsEvent$LoadProfile());
    widget.applicationsBloc.add(const ApplicationsEvent$ShareLinkRequested());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final position = _scrollController.position;
    final isNearBottom =
        position.pixels + _scrollThreshold >= position.maxScrollExtent;
    if (!isNearBottom) return;

    final state = context.read<ApplicationsBloc>().state;
    if (state.isProcessing ||
        state.nextCursor == null ||
        state.nextCursor!.isEmpty) {
      return;
    }

    context.read<ApplicationsBloc>().add(const ApplicationsEvent$LoadNext());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApplicationsBloc, ApplicationsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final isInitialLoading =
            state.isProcessing && state.applications.isEmpty;
        return Scaffold(
          backgroundColor: context.colors.background.primary,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              gap32,
              Padding(
                padding: const EdgeInsets.fromLTRB(64, 0, 64, 0),
                child: Row(
                  children: [
                    NomadeeApplicationsAssets.icons.logo.svg(height: 54),
                    Spacer(),
                    PopupMenuButton(
                      position: PopupMenuPosition.under,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          enabled: false,
                          child: Text(
                            'Having trouble? Contact your manager:\n+9 999 999 999 99',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            widget.onSignOut();
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.logout, size: 20),
                              SizedBox(width: 12),
                              Text('Exit'),
                            ],
                          ),
                        ),
                      ],
                      child: Row(
                        children: [
                          const Icon(Icons.account_circle_outlined),
                          const SizedBox(width: 8),
                          Text(
                            state.agentProfile?.agencyName ??
                                state.agentProfile?.agentName ??
                                '—',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              gap32,
              ApplicationsButtonsWidget(
                bloc: widget.createApplicationBloc,
                shareLink: state.shareLink,
                shareLinkFailure: state.shareLinkFailure,
                isShareLinkProcessing: state.isShareLinkProcessing,
              ),
              gap24,
              Expanded(
                child: isInitialLoading
                    ? const Center(child: CircularProgressIndicator())
                    : ApplicationTableWidget(
                        isLoading: state.isProcessing,
                        applications: state.applications,
                        scrollController: _scrollController,
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
