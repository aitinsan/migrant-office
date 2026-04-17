part of 'applications_bloc.dart';

sealed class ApplicationsEvent extends Equatable {
  const ApplicationsEvent();
}

final class ApplicationsEvent$LoadInitial extends ApplicationsEvent {
  const ApplicationsEvent$LoadInitial({this.limit});

  final int? limit;

  @override
  List<Object?> get props => [limit];
}

final class ApplicationsEvent$LoadNext extends ApplicationsEvent {
  const ApplicationsEvent$LoadNext({this.limit});

  final int? limit;

  @override
  List<Object?> get props => [limit];
}

final class ApplicationsEvent$ShareLinkRequested extends ApplicationsEvent {
  const ApplicationsEvent$ShareLinkRequested();

  @override
  List<Object?> get props => [];
}

final class ApplicationsEvent$LoadProfile extends ApplicationsEvent {
  const ApplicationsEvent$LoadProfile();

  @override
  List<Object?> get props => [];
}

final class ApplicationsEvent$DeleteRequested extends ApplicationsEvent {
  const ApplicationsEvent$DeleteRequested({required this.applicationId});

  final String applicationId;

  @override
  List<Object?> get props => [applicationId];
}

final class _ApplicationsEvent$UpdateState extends ApplicationsEvent {
  const _ApplicationsEvent$UpdateState(this.state);

  final ApplicationsState state;

  @override
  List<Object?> get props => [state];
}
