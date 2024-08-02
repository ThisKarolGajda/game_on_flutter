part of 'server_info_list_bloc.dart';

sealed class ServerInfoListEvent extends Equatable {
  const ServerInfoListEvent();

  @override
  List<Object?> get props => [];
}

final class ServerInfoListFetchServer extends ServerInfoListEvent {
  final ServerModel serverModel;

  const ServerInfoListFetchServer(this.serverModel);

  @override
  List<Object?> get props => [serverModel];
}
