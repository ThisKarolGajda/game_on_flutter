import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_api.dart';
import 'package:game_on/features/user/data/models/basic_data/user_basic_data_model.dart';
import 'package:game_on/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final GameonUserApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<Either<Exception, UserBasicDataModel>> getUser(ServerBasicDataModel serverBasicDataModel, String bearerToken) async {
    UserBasicDataModel? userBasicDataModel = await _api.getUserData(serverBasicDataModel.address, serverBasicDataModel.port, bearerToken);
    if (userBasicDataModel == null) {
      return Left(Exception('Returned value is empty.'));
    }

    return Right(userBasicDataModel);
  }

}