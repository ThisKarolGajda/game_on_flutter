import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_info_repository.dart';

class ServerInfoRepositoryImpl extends ServerInfoRepository {
  final GameonServerApi _api;

  ServerInfoRepositoryImpl(this._api);

  @override
  Future<Either<Exception, ServerInfoModel>> fetchServer(ServerModel serverModel) async {
    ServerInfoModel? serverInfo = await _api.getServerInfoModel(serverModel.address, serverModel.port);
    if (serverInfo == null) {
      return Left(Exception('Cannot fetch server.'));
    }

    return Right(serverInfo);
  }

}