import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:game_on/features/servers/data/models/server_model.dart';

class RemoteConfigServerApi {
  Future<ServerList> fetchServers() async {
    RemoteConfigValue value = FirebaseRemoteConfig.instance.getValue('servers');
    if (value.source == ValueSource.valueRemote) {
      String jsonString = value.asString();

      Map<String, dynamic> jsonResponse = jsonDecode(jsonString);

      return ServerList.fromJson(jsonResponse);
    } else {
      print('No remote value found for servers.');
    }

    return const ServerList(servers: []);
  }

}