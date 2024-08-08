import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:game_on/features/servers/data/models/basic_data/server_basic_data_model.dart';

class TokenStorage {
  static const _storage = FlutterSecureStorage();
  static String? _token;

  static Future<String?> getToken(ServerBasicDataModel serverModel) async {
    String? token = await _storage.read(key: serverModel.address);
    _token = token;
    return _token;
  }

  static Future<void> updateToken(ServerBasicDataModel serverModel, String token) async {
    await _storage.write(key: serverModel.address, value: token);
    _token = token;
  }

}

String? get token => TokenStorage._token;
