import 'package:applications/src/applications/domain/models/application.dart';
import 'package:applications/src/applications/presentation/bloc/applications/applications_bloc.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ApplicationRowWidget extends StatefulWidget {
  const ApplicationRowWidget({
    super.key,
    required this.client,
    required this.index,
  });
  final Application client;
  final int index;

  @override
  State<ApplicationRowWidget> createState() => _ApplicationRowWidgetState();
}

class _ApplicationRowWidgetState extends State<ApplicationRowWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        color: isHovered ? const Color(0xFFF9FAFB) : Colors.white,
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                widget.client.pan,
                style: context.theme.textTheme.bodyLarge,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                '${widget.client.firstName} ${widget.client.lastName}',
                style: context.theme.textTheme.bodyLarge,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                widget.client.phone,
                style: context.theme.textTheme.bodyLarge,
              ),
            ),
            Expanded(
              flex: 2,
              child: isHovered
                  ? GestureDetector(
                      onTap: () => _showDeleteDialog(),
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline,
                            size: 16,
                            color: context.theme.colorScheme.primary,
                          ),
                          SizedBox(width: 16),
                          Text(
                            'Delete',
                            style: context.theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    )
                  : Text(
                      _formatCreatedDate(widget.client.created),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF111827),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDeleteDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        constraints: const BoxConstraints(maxWidth: 422),
        title: const Text('Delete candidate'),
        content: Text(
          'Are you sure you want to delete this candidate? This action cannot be undone',
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colors.background.tertiary,
            ),
            child: Text('Cancel', style: context.theme.textTheme.labelLarge),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ApplicationsBloc>().add(
                ApplicationsEvent$DeleteRequested(
                  applicationId: widget.client.id,
                ),
              );
              Navigator.pop(ctx);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colors.button.primaryDefault,
            ),
            child: Text(
              'Delete',
              style: context.theme.textTheme.labelLarge?.copyWith(
                color: context.colors.content.opposite,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatCreatedDate(String isoDate) {
    final parsed = DateTime.tryParse(isoDate);
    if (parsed == null) return isoDate;
    final d = parsed.toLocal();
    final day = d.day.toString().padLeft(2, '0');
    final month = d.month.toString().padLeft(2, '0');
    final year = d.year.toString();
    return '$day.$month.$year';
  }
}
