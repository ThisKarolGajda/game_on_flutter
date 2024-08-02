import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/features/server_features_model.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_basic_data_repository.dart';
import 'package:game_on/features/servers/domain/repositories/server_features_repository.dart';
import 'package:game_on/features/servers/domain/repositories/server_info_repository.dart';

part 'server_event.dart';
part 'server_state.dart';

class ServerBloc extends Bloc<ServerEvent, ServerState> {
  final ServerBasicDataRepository _serverRepository;
  final ServerInfoRepository _serverInfoRepository;
  final ServerFeaturesRepository _serverFeaturesRepository;

  ServerBloc(this._serverRepository, this._serverInfoRepository,
      this._serverFeaturesRepository)
      : super(ServerInitial()) {
    on<ServerLoadList>(_onServerLoadList);
    on<ServerFetch>(_onServerFetch);
  }

  _onServerLoadList(ServerLoadList event, Emitter<ServerState> emit) async {
    emit(ServerLoading());
    await _serverRepository.getServers().fold(
      (exception) => emit(ServerError(exception)),
      (list) {
        emit(ServersLoaded(list.map((basicData) {
          add(ServerFetch(basicData));
          return ServerModel(basicData: basicData);
        }).toList()));
      },
    );
  }

  _onServerFetch(ServerFetch event, Emitter<ServerState> emit) async {
    ServerBasicDataModel server = event.server;

    Either<Exception, ServerInfoModel> serverInfoModelEither =
        await _serverInfoRepository.fetchServerInfo(server);
    if (serverInfoModelEither.isLeft) {
      emit(ServerError(serverInfoModelEither.left));
      return;
    }

    Either<Exception, ServerFeaturesModel> serverFeaturesModelEither =
        await _serverFeaturesRepository.fetchServerFeatures(server);
    if (serverFeaturesModelEither.isLeft) {
      emit(ServerError(serverFeaturesModelEither.left));
      return;
    }

    ServerModel model = ServerModel(
      basicData: server,
      info: serverInfoModelEither.right,
      features: serverFeaturesModelEither.right,
    );

    List<ServerModel> updatedList = [];

    if (state is ServersLoaded) {
      updatedList = List.from((state as ServersLoaded).servers);
      updatedList.removeWhere((existingServer) =>
          existingServer.basicData.name == server.name);
      updatedList.add(model);
    } else {
      updatedList = [model];
    }

    emit(ServersLoaded(updatedList));
  }
}
