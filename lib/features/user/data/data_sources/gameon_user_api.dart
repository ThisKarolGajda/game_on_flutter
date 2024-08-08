import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:game_on/features/user/data/models/basic_data/user_basic_data_model.dart';

class GameonUserApi {
  final Dio _dio;

  GameonUserApi(this._dio);

  Future<UserBasicDataModel?> getUserData(String address, int port, String bearerToken) async {
    try {
      final String url = 'http://$address:$port/api/v1/authentication/info';
      final response = await _dio.get(url, options: Options(
        headers: {
          'Authorization': 'Bearer $bearerToken',
        }
      ));
      if (response.statusCode == 200) {
        return UserBasicDataModel.fromJson(response.data);
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