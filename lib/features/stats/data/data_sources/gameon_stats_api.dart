import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/stats/data/models/stats_model.dart';

class GameonStatsApi {
  final Dio _dio;

  GameonStatsApi(this._dio);

  Future<StatsModel?> getGlobalStats(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/stats/global';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return StatsModel.fromJson(response.data);
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

  Future<StatsModel?> getUserStats(String address, int port, {String? uuid}) async {
    try {
      String url = 'http://$address:$port/api/v1/stats/user';

      if (uuid != null && uuid.isNotEmpty) {
        url += '/$uuid';
      }

      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return StatsModel.fromJson(response.data);
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
}