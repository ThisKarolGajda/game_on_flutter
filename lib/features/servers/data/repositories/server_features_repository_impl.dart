import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/gameon_server_api.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/features/server_features_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_features_repository.dart';

class ServerFeaturesRepositoryImpl extends ServerFeaturesRepository {
  final GameonServerApi _api;

  ServerFeaturesRepositoryImpl(this._api);

  @override
  Future<Either<Exception, ServerFeaturesModel>> fetchServerFeatures(ServerBasicDataModel server) async {
    ServerFeaturesModel? serverInfo = await _api.getServerFeatures(server.address, server.port);
    if (serverInfo == null) {
      return Left(Exception('Cannot fetch server features.'));
    }

    return Right(serverInfo);
  }

}