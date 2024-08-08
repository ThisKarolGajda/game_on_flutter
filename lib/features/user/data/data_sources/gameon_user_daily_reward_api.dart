import 'package:game_on/common/util/exports.dart';

class GameonUserDailyRewardApi {
  final Dio _dio;

  GameonUserDailyRewardApi(this._dio);

  Future<bool> hasAvailableDailyReward(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/daily-reward/has';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = response.data;
        return json['value'];
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching user daily reward: $e');
      }
      return false;
    }
  }

  Future<bool> claimDailyReward(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/daily-reward/claim';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = response.data;
        return json['claimed'];
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error claiming user daily reward: $e');
      }
      return false;
    }
  }
}