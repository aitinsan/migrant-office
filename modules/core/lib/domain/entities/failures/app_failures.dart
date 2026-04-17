import 'package:equatable/equatable.dart';

/// Обрабатываемые ошибки.
abstract class AppFailure extends Equatable implements Exception {
  const AppFailure({required this.message});

  final String message;

  @override
  String toString() => message;
}

/// Неизвестная необработанная ошибка.
class UnhandledFailure extends AppFailure {
  const UnhandledFailure(this.error, this.stackTrace)
    : super(message: 'Unhandled failure');

  final Object error;
  final StackTrace stackTrace;

  @override
  List<Object?> get props => [error, stackTrace];
}

class MapFailure extends AppFailure {
  const MapFailure({super.message = 'Model map failure'});

  @override
  List<Object?> get props => [message];
}

class ParseFailure extends AppFailure {
  const ParseFailure({super.message = 'Response parse failure'});

  @override
  List<Object?> get props => [message];
}

class CustomFailure extends AppFailure {
  const CustomFailure({required super.message});

  @override
  List<Object?> get props => [message];
}

class DataHolderFailure extends AppFailure {
  const DataHolderFailure({super.message = 'DataHolder Failure'});

  factory DataHolderFailure.notInitialized() =>
      const DataHolderFailure(message: 'Not initialized');

  @override
  List<Object?> get props => [message];
}

/// Ошибка при потере соединения в общем
class NoConnectionFailure extends AppFailure {
  const NoConnectionFailure({super.message = 'No Connection'});

  @override
  List<Object?> get props => [message];
}

/// Ошибки с RSA зашифровкой/расшифровкой, конвертаций и т.п.
class RsaFailure extends AppFailure {
  const RsaFailure({required super.message, this.error});

  final Object? error;

  @override
  List<Object?> get props => [message, error];
}

class FileStorageFailure extends AppFailure {
  const FileStorageFailure({required super.message});

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'File Storage failed with $message';
}
