part of 'server_bloc.dart';

sealed class ServerState extends Equatable {
  const ServerState();

  @override
  List<Object> get props => [];
}

final class ServerInitial extends ServerState {}

final class ServersLoaded extends ServerState {
  final List<ServerModel> servers;

  const ServersLoaded(this.servers);

  @override
  List<Object> get props => [servers];
}

final class ServerError extends ServerState {
  final Exception exception;

  const ServerError(this.exception);

  @override
  List<Object> get props => [exception];
}

class ServerLoading extends ServerState {
  final int loadingStartTimestamp;

  ServerLoading({int? loadingStartTimestamp})
      : loadingStartTimestamp = loadingStartTimestamp ?? (DateTime.now().millisecondsSinceEpoch ~/ 1000);

  Duration get loadingDuration => Duration(
      seconds: DateTime.now().millisecondsSinceEpoch ~/ 1000 -
          loadingStartTimestamp);

  @override
  List<Object> get props => [loadingStartTimestamp];
}
