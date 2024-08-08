import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/servers/data/models/color_panel/color_panel_model.dart';
import 'package:game_on/features/servers/data/models/features/server_features_model.dart';
import 'package:game_on/features/servers/data/models/info/server_info_model.dart';

class GameonServerApi {
  final Dio _dio;

  GameonServerApi(this._dio);

  Future<ServerInfoModel?> getServerInfoModel(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/server/all-info';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return ServerInfoModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching server info: $e');
      }
      return null;
    }
  }

  Future<ServerFeaturesModel?> getServerFeatures(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/features';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return ServerFeaturesModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching server features: $e');
      }
      return null;
    }
  }

  Future<ColorPanelModel?> getColorPanel(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/color-panel/colors';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return ColorPanelModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
