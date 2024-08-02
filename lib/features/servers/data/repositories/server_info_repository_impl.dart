import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_info_repository.dart';

class ServerInfoRepositoryImpl extends ServerInfoRepository {
  final GameonServerApi _api;

  ServerInfoRepositoryImpl(this._api);

  @override
  Future<Either<Exception, ServerInfoModel>> fetchServerInfo(ServerBasicDataModel server) async {
    ServerInfoModel? serverInfo = await _api.getServerInfoModel(server.address, server.port);
    if (serverInfo == null) {
      return Left(Exception('Cannot fetch server info.'));
    }

    return Right(serverInfo);
  }

}