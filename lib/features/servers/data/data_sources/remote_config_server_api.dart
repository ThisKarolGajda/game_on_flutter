import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';

class RemoteConfigServerApi {
  Future<List<ServerBasicDataModel>> fetchServers() async {
    RemoteConfigValue value = FirebaseRemoteConfig.instance.getValue('servers');
    if (value.source == ValueSource.valueRemote) {
      String jsonString = value.asString();

      Map<String, dynamic> jsonResponse = jsonDecode(jsonString);

      List<dynamic> serversJson = jsonResponse['servers'];
      List<ServerBasicDataModel> servers = serversJson
          .map((serverJson) => ServerBasicDataModel.fromJson(serverJson))
          .toList();

      return servers;
    } else {
      if (kDebugMode) {
        print('No remote value found for servers.');
      }
    }

    return [];
  }
}