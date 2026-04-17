import 'package:core/external_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:network/network.dart';

class ServerPicker extends StatelessWidget {
  const ServerPicker({
    super.key,
    required this.serverUrl,
    required this.servers,
    required this.sslPinningEnabled,
    required this.onServerChanged,
    required this.onSslPinningChanged,
    this.enabled = true,
  });

  final bool enabled;

  final String serverUrl;

  final List<ServerItem> servers;

  final bool sslPinningEnabled;

  final ValueChanged<ServerItem> onServerChanged;

  final ValueChanged<bool> onSslPinningChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Api:'),
            const SizedBox(width: 8),
            Expanded(
              child: DropdownButton<String>(
                isExpanded: true,
                value: serverUrl,
                items: servers.map((item) {
                  final uri = item.uri;
                  final urlString = uri.toString();

                  return DropdownMenuItem(
                    value: urlString,
                    child: Text('${uri.host} (${item.name})'),
                  );
                }).toList(),
                onChanged: enabled
                    ? (url) {
                        final server = servers.firstWhereOrNull(
                          (item) => item.uri.toString() == url,
                        );

                        if (server != null) {
                          onServerChanged(server);
                        }
                      }
                    : null,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        SwitchListTile(
          title: const Text('Enable SSL pinning for prod'),
          value: sslPinningEnabled,
          onChanged: enabled ? onSslPinningChanged : null,
        ),
      ],
    );
  }
}
