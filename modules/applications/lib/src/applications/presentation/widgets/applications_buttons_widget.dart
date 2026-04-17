import 'package:applications/applications.dart';
import 'package:applications/src/applications/presentation/widgets/add_application_dialog.dart';
import 'package:core/core.dart';
import 'package:design_system/components/snack_bar/snack_bar.dart';
import 'package:design_system/tokens/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ApplicationsButtonsWidget extends StatefulWidget {
  const ApplicationsButtonsWidget({
    super.key,
    required this.shareLink,
    required this.shareLinkFailure,
    required this.isShareLinkProcessing,
    required this.bloc,
  });

  final CreateApplicationBloc bloc;
  final String? shareLink;
  final AppFailure? shareLinkFailure;
  final bool isShareLinkProcessing;

  @override
  State<ApplicationsButtonsWidget> createState() =>
      _ApplicationsButtonsWidgetState();
}

class _ApplicationsButtonsWidgetState extends State<ApplicationsButtonsWidget> {
  void onShareLinkPressed() {
    final shareLink = widget.shareLink;
    if (widget.isShareLinkProcessing || shareLink == null) return;
    if (widget.shareLinkFailure != null) {
      return showTopSnack(context, Snack(SnackSuccessMessage('Error!')));
    }

    Clipboard.setData(ClipboardData(text: shareLink));
    showTopSnack(context, Snack(SnackSuccessMessage('Link is copied')));
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton.icon(
            onPressed: widget.isShareLinkProcessing ? null : onShareLinkPressed,
            icon: const Icon(Icons.link, size: 16),
            label: const Text('Share link'),
            style: OutlinedButton.styleFrom(
              backgroundColor: context.colors.background.tertiary,
              foregroundColor: context.colors.content.primary,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            ),
          ),
          const SizedBox(width: 12),
          ElevatedButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AddApplicationDialog(bloc: widget.bloc),
              );
            },
            icon: const Icon(Icons.add, size: 16, color: Colors.white),
            label: const Text(
              'New client',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2563EB),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
