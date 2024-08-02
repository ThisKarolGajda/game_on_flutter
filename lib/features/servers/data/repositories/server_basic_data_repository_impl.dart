import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/remote_config_server_api.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_basic_data_repository.dart';

class ServerBasicDataRepositoryImpl extends ServerBasicDataRepository {
  final RemoteConfigServerApi _api;

  ServerBasicDataRepositoryImpl(this._api);

  @override
  Future<Either<Exception, List<ServerBasicDataModel>>> getServers() async {
    List<ServerBasicDataModel> list = await _api.fetchServers();
    if (list.isEmpty) {
      return Left(Exception('Server list is empty.'));
    }

    return Right(list);
  }
}