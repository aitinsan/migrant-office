import 'dart:async';

import 'package:core/core.dart';
import 'package:core/external_dependencies.dart';
import 'package:migrant_office/core/storage/local_storage/app_local_storage_key.dart';
import 'package:network/network.dart';

part 'debug_event.dart';
part 'debug_state.dart';

final class DebugBloc extends BaseBloc<DebugEvent, DebugState> {
  final LocalStorage _localStorage;

  final Future<void> Function() _reinitialize;

  DebugBloc({
    required LocalStorage localStorage,
    required DebugStateModel data,
    required List<ServerItem> serverItems,
    required String appVersion,
    required Future<void> Function() reinitialize,
  }) : _localStorage = localStorage,
       _reinitialize = reinitialize,
       super(
         DebugState.initial(
           data: data,
           serverItems: serverItems,
           appVersion: appVersion,
         ),
       ) {
    on<DebugEvent>(
      (event, emit) => switch (event) {
        DebugEvent$UpdateServerUrl() => _onUpdateServerUrl(event, emit),
        DebugEvent$UpdateProxyIp() => _onUpdateProxyIp(event, emit),
        DebugEvent$UpdateSslPinning() => _onUpdateSslPinning(event, emit),
        DebugEvent$Reset() => _onReset(event, emit),
        DebugEvent$Save() => _onSave(event, emit),
      },
    );
  }

  FutureOr<void> _onUpdateServerUrl(
    DebugEvent$UpdateServerUrl event,
    Emitter<DebugState> emit,
  ) async {
    emit(
      DebugState.idle(
        data: state.data,
        unsavedData: (state.unsavedData ?? state.data).copyWith(
          serverUrl: event.serverItem.uri.toString(),
        ),
        serverItems: state.serverItems,
        appVersion: state.appVersion,
      ),
    );
  }

  FutureOr<void> _onUpdateProxyIp(
    DebugEvent$UpdateProxyIp event,
    Emitter<DebugState> emit,
  ) async {
    emit(
      DebugState.idle(
        data: state.data,
        unsavedData: (state.unsavedData ?? state.data).copyWith(
          proxyIp: event.proxyIp,
        ),
        serverItems: state.serverItems,
        appVersion: state.appVersion,
      ),
    );
  }

  FutureOr<void> _onUpdateSslPinning(
    DebugEvent$UpdateSslPinning event,
    Emitter<DebugState> emit,
  ) async {
    emit(
      DebugState.idle(
        data: state.data,
        unsavedData: (state.unsavedData ?? state.data).copyWith(
          sslPinningEnabled: event.sslPinningEnabled,
        ),
        serverItems: state.serverItems,
        appVersion: state.appVersion,
      ),
    );
  }

  FutureOr<void> _onReset(
    DebugEvent$Reset event,
    Emitter<DebugState> emit,
  ) async {
    emit(
      DebugState.processing(
        data: state.data,
        unsavedData: null,
        serverItems: state.serverItems,
        appVersion: state.appVersion,
      ),
    );
  }

  FutureOr<void> _onSave(
    DebugEvent$Save event,
    Emitter<DebugState> emit,
  ) async {
    final unsavedData = state.unsavedData;
    if (unsavedData == null) return;

    final data = state.data;

    emit(
      DebugState.processing(
        data: state.data,
        unsavedData: state.unsavedData,
        serverItems: state.serverItems,
        appVersion: state.appVersion,
      ),
    );

    try {
      if (unsavedData.sslPinningEnabled != data.sslPinningEnabled) {
        await _localStorage.setBool(
          AppLocalStorageKey.enableSslPinningForQA,
          unsavedData.sslPinningEnabled,
        );
      }

      if (unsavedData.serverUrl != data.serverUrl) {
        await _localStorage.setString(
          AppLocalStorageKey.testServer,
          unsavedData.serverUrl,
        );
      }

      if (unsavedData.proxyIp != data.proxyIp) {
        await _localStorage.setString(
          AppLocalStorageKey.proxyIp,
          unsavedData.proxyIp,
        );
      }

      await _reinitialize();

      emit(
        DebugState.succeeded(
          data: state.data,
          unsavedData: null,
          serverItems: state.serverItems,
          appVersion: state.appVersion,
        ),
      );
    } on Object catch (error) {
      emit(
        DebugState.failed(
          data: state.data,
          unsavedData: state.unsavedData,
          serverItems: state.serverItems,
          appVersion: state.appVersion,
          failure: CustomFailure(message: Error.safeToString(error)),
        ),
      );

      rethrow;
    }
  }
}
