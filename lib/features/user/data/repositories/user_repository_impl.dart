import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/user/data/data_sources/gameon_user_api.dart';
import 'package:game_on/features/user/data/models/user_model.dart';
import 'package:game_on/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final GameonUserApi _api;

  UserRepositoryImpl(this._api);

  @override
  Future<Either<Exception, UserModel>> getUserModel(ServerBasicDataModel serverBasicDataModel, String bearerToken) async {
    UserModelUserId? userId = await _api.getCurrentAuthenticationInfo(serverBasicDataModel.address, serverBasicDataModel.port, bearerToken);
    if (userId == null) {
      return Left(Exception('Returned value is empty.'));
    }

    UserModel? userModel = await _api.getUserFromUserId(serverBasicDataModel.address, serverBasicDataModel.port, userId);
    if (userModel == null) {
      return Left(Exception('Returned value is empty.'));
    }

    return Right(userModel);
  }

}