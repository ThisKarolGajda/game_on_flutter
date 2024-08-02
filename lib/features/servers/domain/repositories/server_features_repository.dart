import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';
import 'package:game_on/features/servers/data/models/features/server_features_model.dart';

abstract class ServerFeaturesRepository {

  Future<Either<Exception, ServerFeaturesModel>> fetchServerFeatures(ServerBasicDataModel server);
}