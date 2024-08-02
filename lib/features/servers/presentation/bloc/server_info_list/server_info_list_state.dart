part of 'server_info_list_bloc.dart';

sealed class ServerInfoListState extends Equatable {
  const ServerInfoListState();

  @override
  List<Object> get props => [];
}

final class ServerInfoListInitial extends ServerInfoListState {

}

final class ServerInfoListLoaded extends ServerInfoListState {
  final List<ServerInfoModel> list;

  const ServerInfoListLoaded(this.list);

  @override
  List<Object> get props => [list];

  ServerInfoModel? get(ServerModel serverModel) {
    return list.where((server) => server.address == serverModel.address).firstOrNull;
  }
}

final class ServerInfoListError extends ServerInfoListState {
  final Exception exception;

  const ServerInfoListError(this.exception);

  @override
  List<Object> get props => [exception];
}
