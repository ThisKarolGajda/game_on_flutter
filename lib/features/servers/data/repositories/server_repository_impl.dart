import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/data_sources/remote_config_server_api.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';
import 'package:game_on/features/servers/domain/repositories/server_repository.dart';

class ServerRepositoryImpl extends ServerRepository {
  final RemoteConfigServerApi _api;

  ServerRepositoryImpl(this._api);

  @override
  Future<Either<Exception, ServerList>> getServers() async {
    ServerList list = await _api.fetchServers();
    if (list.servers.isEmpty) {
      return Left(Exception('Server list is empty.'));
    }

    return Right(list);
  }
}