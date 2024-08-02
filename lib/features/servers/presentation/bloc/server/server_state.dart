part of 'server_bloc.dart';

sealed class ServerState extends Equatable {
  const ServerState();

  @override
  List<Object> get props => [];
}

final class ServerInitial extends ServerState {

}

final class ServerListLoaded extends ServerState {
  final ServerList serverList;

  const ServerListLoaded(this.serverList);

  @override
  List<Object> get props => [serverList];
}

final class ServerListError extends ServerState {
  final Exception exception;

  const ServerListError(this.exception);

  @override
  List<Object> get props => [exception];
}
