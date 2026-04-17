import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:migrant_office/debug/presentation/bloc/debug_bloc.dart';
import 'package:migrant_office/debug/presentation/widget/proxy_field.dart';
import 'package:migrant_office/debug/presentation/widget/server_picker.dart';

class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key, required this.bloc});

  final DebugBloc bloc;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Debug Screen')),
    body: SafeArea(
      child: BlocBuilder<DebugBloc, DebugState>(
        bloc: bloc,
        builder: (context, state) {
          final isProcessing = state is DebugState$Processing;
          final canSave = !isProcessing && state.hasChanges;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ProxyField(
                      enabled: !isProcessing,
                      proxyIp: state.displayData.proxyIp,
                      onSet: (value) =>
                          bloc.add(DebugEvent$UpdateProxyIp(proxyIp: value)),
                    ),
                    ServerPicker(
                      enabled: !isProcessing,
                      serverUrl: state.displayData.serverUrl,
                      servers: state.serverItems,
                      sslPinningEnabled: state.displayData.sslPinningEnabled,
                      onServerChanged: (value) => bloc.add(
                        DebugEvent$UpdateServerUrl(serverItem: value),
                      ),
                      onSslPinningChanged: (value) => bloc.add(
                        DebugEvent$UpdateSslPinning(sslPinningEnabled: value),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 4,
                  children: [
                    Text(state.appVersion, textAlign: TextAlign.center),
                    OutlinedButton(
                      onPressed: canSave
                          ? () {
                              bloc.add(DebugEvent$Save());
                            }
                          : null,
                      child: Text('Reload'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}
