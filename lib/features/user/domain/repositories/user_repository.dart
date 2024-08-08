import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/user/data/models/basic_data/user_basic_data_model.dart';

abstract class UserRepository {

  Future<Either<Exception, UserBasicDataModel>> getUser(ServerBasicDataModel serverBasicDataModel, String bearerToken);
}