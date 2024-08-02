import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';

abstract class ServerBasicDataRepository {

  Future<Either<Exception, List<ServerBasicDataModel>>> getServers();
}