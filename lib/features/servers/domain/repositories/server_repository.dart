import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';

abstract class ServerRepository {

  Future<Either<Exception, ServerList>> getServers();
}