part of 'debug_bloc.dart';

sealed class DebugEvent extends Equatable {
  const DebugEvent();
}

final class DebugEvent$UpdateServerUrl extends DebugEvent {
  const DebugEvent$UpdateServerUrl({required this.serverItem});

  final ServerItem serverItem;

  @override
  List<Object?> get props => throw UnimplementedError();
}

final class DebugEvent$UpdateProxyIp extends DebugEvent {
  const DebugEvent$UpdateProxyIp({required this.proxyIp});

  final String proxyIp;

  @override
  List<Object?> get props => [proxyIp];
}

final class DebugEvent$UpdateSslPinning extends DebugEvent {
  const DebugEvent$UpdateSslPinning({required this.sslPinningEnabled});

  final bool sslPinningEnabled;

  @override
  List<Object?> get props => [sslPinningEnabled];
}

final class DebugEvent$Reset extends DebugEvent {
  const DebugEvent$Reset();

  @override
  List<Object?> get props => [];
}

final class DebugEvent$Save extends DebugEvent {
  const DebugEvent$Save();

  @override
  List<Object?> get props => [];
}