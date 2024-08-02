import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/server_info_model.dart';

class GameonServerApi {
  final Dio _dio;

  GameonServerApi(this._dio);

  Future<ServerInfoModel?> getServerInfoModel(String address, int port) async {
    print('Address: $address - Port: $port');
    try {
      final String url = 'http://$address:$port/api/v1/server/all-info';
      print('START');
      final response = await _dio.get(url);
      print('STOP');
      if (response.statusCode == 200) {
        print(response.data);
        return ServerInfoModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching server info: $e');
      return null;
    }
  }
}
