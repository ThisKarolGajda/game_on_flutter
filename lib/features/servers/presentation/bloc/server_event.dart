part of 'server_bloc.dart';

sealed class ServerEvent extends Equatable {
  const ServerEvent();

  @override
  List<Object?> get props => [];
}

final class ServerLoadList extends ServerEvent {}

final class ServerFetch extends ServerEvent {
  final ServerBasicDataModel server;

  const ServerFetch(this.server);

  @override
  List<Object?> get props => [server];
}

final class ServerRefresh extends ServerEvent {}