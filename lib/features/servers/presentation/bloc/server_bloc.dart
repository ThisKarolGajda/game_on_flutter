import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/color_panel_repository.dart';
import 'package:game_on/features/servers/domain/repositories/server_basic_data_repository.dart';
import 'package:game_on/features/servers/domain/repositories/server_features_repository.dart';
import 'package:game_on/features/servers/domain/repositories/server_info_repository.dart';

part 'server_event.dart';
part 'server_state.dart';

class ServerBloc extends Bloc<ServerEvent, ServerState> {
  final ServerBasicDataRepository _serverRepository;
  final ServerInfoRepository _serverInfoRepository;
  final ServerFeaturesRepository _serverFeaturesRepository;
  final ColorPanelRepository _colorPanelRepository;

  ServerBloc(this._serverRepository, this._serverInfoRepository,
      this._serverFeaturesRepository, this._colorPanelRepository)
      : super(ServerInitial()) {
    on<ServerLoadList>(_onServerLoadList);
    on<ServerFetch>(_onServerFetch);
  }

  Future<ServerModel> _createServerModel(ServerBasicDataModel basicData) async {
    final serverInfoResult =
        await _serverInfoRepository.fetchServerInfo(basicData);
    final serverFeaturesResult =
        await _serverFeaturesRepository.fetchServerFeatures(basicData);
    final colorPanelResult =
        await _colorPanelRepository.fetchColorPanel(basicData);

    return ServerModel(
      basicData: basicData,
      info: serverInfoResult.isLeft ? null : serverInfoResult.right,
      features: serverFeaturesResult.isLeft ? null : serverFeaturesResult.right,
      colorPanel: colorPanelResult.isLeft ? null : colorPanelResult.right,
    );
  }

  _onServerLoadList(ServerLoadList event, Emitter<ServerState> emit) async {
    emit(ServerLoading());

    final result = await _serverRepository.getServers();

    await result.fold(
      (exception) async {
        emit(ServerError(exception));
      },
      (list) async {
        final futures = list.map((basicData) async {
          return await _createServerModel(basicData);
        }).toList();

        final serverModels = await Future.wait(futures);
        emit(ServersLoaded(serverModels));
      },
    );
  }

  _onServerFetch(ServerFetch event, Emitter<ServerState> emit) async {
    emit(ServerLoading());
    final server = event.server;

    final model = await _createServerModel(server);

    List<ServerModel> updatedList = [];

    if (state is ServersLoaded) {
      updatedList = List.from((state as ServersLoaded).servers);
      updatedList.removeWhere(
          (existingServer) => existingServer.basicData.name == server.name);
      updatedList.add(model);
    } else {
      updatedList = [model];
    }

    emit(ServersLoaded(updatedList));
  }
}
