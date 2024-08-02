import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_info_repository.dart';

part 'server_info_list_event.dart';
part 'server_info_list_state.dart';

class ServerInfoListBloc
    extends Bloc<ServerInfoListEvent, ServerInfoListState> {
  final ServerInfoRepository _repository;

  ServerInfoListBloc(this._repository) : super(ServerInfoListInitial()) {
    on<ServerInfoListFetchServer>(_onServerInfoListFetchServerEvent);
  }

  _onServerInfoListFetchServerEvent(ServerInfoListFetchServer event,
      Emitter<ServerInfoListState> emit) async {
    List<ServerInfoModel> servers = [];
    if (state is ServerInfoListLoaded) {
      servers = (state as ServerInfoListLoaded).list;
    }

    print('Servers: $servers');

    (await _repository.fetchServer(event.serverModel)).fold(
      (exception) => emit(ServerInfoListError(exception)),
      (server) {
        servers.removeWhere((server1) => server1.address == server.address);
        servers.add(server);
        print('Servers 2: $servers');

        emit(ServerInfoListLoaded(servers));
      },
    );
  }
}
