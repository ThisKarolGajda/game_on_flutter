import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';

abstract class ServerInfoRepository {

  Future<Either<Exception, ServerInfoModel>> fetchServer(ServerModel serverModel);
}