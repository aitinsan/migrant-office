part of 'debug_bloc.dart';

class DebugStateModel extends Equatable {
  const DebugStateModel({
    required this.serverUrl,
    required this.proxyIp,
    required this.sslPinningEnabled,
  });

  final String serverUrl;

  final String proxyIp;

  final bool sslPinningEnabled;

  DebugStateModel copyWith({
    String? serverUrl,
    String? proxyIp,
    bool? sslPinningEnabled,
  }) => DebugStateModel(
    serverUrl: serverUrl ?? this.serverUrl,
    proxyIp: proxyIp ?? this.proxyIp,
    sslPinningEnabled: sslPinningEnabled ?? this.sslPinningEnabled,
  );

  @override
  List<Object?> get props => [serverUrl, sslPinningEnabled, proxyIp];
}

sealed class DebugState extends _$DebugStateBase {
  const DebugState({
    required super.data,
    required super.unsavedData,
    required super.serverItems,
    required super.appVersion,
    super.failure,
  });

  const factory DebugState.idle({
    required DebugStateModel data,
    required DebugStateModel? unsavedData,
    required List<ServerItem> serverItems,
    required String appVersion,
  }) = DebugState$Idle;

  const factory DebugState.processing({
    required DebugStateModel data,
    required DebugStateModel? unsavedData,
    required List<ServerItem> serverItems,
    required String appVersion,
  }) = DebugState$Processing;

  const factory DebugState.succeeded({
    required DebugStateModel data,
    required DebugStateModel? unsavedData,
    required List<ServerItem> serverItems,
    required String appVersion,
  }) = DebugState$Succeeded;

  const factory DebugState.failed({
    required DebugStateModel data,
    required DebugStateModel? unsavedData,
    required List<ServerItem> serverItems,
    required String appVersion,
    required AppFailure failure,
  }) = DebugState$Failed;

  factory DebugState.initial({
    required DebugStateModel data,
    required List<ServerItem> serverItems,
    required String appVersion,
  }) => DebugState$Idle(
    data: data,
    unsavedData: null,
    serverItems: serverItems,
    appVersion: appVersion,
  );
}

final class DebugState$Idle extends DebugState {
  const DebugState$Idle({
    required super.data,
    required super.unsavedData,
    required super.serverItems,
    required super.appVersion,
  });
}

final class DebugState$Processing extends DebugState {
  const DebugState$Processing({
    required super.data,
    required super.unsavedData,
    required super.serverItems,
    required super.appVersion,
  });
}

final class DebugState$Succeeded extends DebugState {
  const DebugState$Succeeded({
    required super.data,
    required super.unsavedData,
    required super.serverItems,
    required super.appVersion,
  });
}

final class DebugState$Failed extends DebugState {
  const DebugState$Failed({
    required super.data,
    required super.unsavedData,
    required super.serverItems,
    required super.appVersion,
    required AppFailure failure,
  }) : super(failure: failure);
}

@immutable
abstract base class _$DebugStateBase extends Equatable {
  const _$DebugStateBase({
    required this.data,
    required this.serverItems,
    required this.unsavedData,
    required this.appVersion,
    this.failure,
  });

  @nonVirtual
  final DebugStateModel data;

  @nonVirtual
  final DebugStateModel? unsavedData;

  DebugStateModel get displayData => unsavedData ?? data;

  bool get hasChanges {
    if (unsavedData == null) return false;
    return unsavedData != data;
  }

  @nonVirtual
  final List<ServerItem> serverItems;

  final String appVersion;

  @nonVirtual
  final AppFailure? failure;

  @override
  List<Object?> get props => [
    data,
    unsavedData,
    serverItems,
    appVersion,
    failure,
  ];

  @override
  String toString() =>
      'DebugState{data: $data, serverItems: $serverItems, appVersion: $appVersion, unsavedData: $unsavedData, failure: $failure}';
}
