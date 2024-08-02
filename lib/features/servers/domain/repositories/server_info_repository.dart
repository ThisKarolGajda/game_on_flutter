import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';

abstract class ServerInfoRepository {

  Future<Either<Exception, ServerInfoModel>> fetchServerInfo(ServerBasicDataModel server);
}