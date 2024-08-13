import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:game_on/features/servers/data/data_sources/token_storage.dart';
import 'package:game_on/features/user/data/models/user_model.dart';

class GameonUserApi {
  final Dio _dio;

  GameonUserApi(this._dio);

  Future<UserModelUserId?> getCurrentAuthenticationInfo(String address, int port, String bearerToken) async {
    try {
      final String url = 'http://$address:$port/api/v1/authentication/info';
      final response = await _dio.get(url, options: Options(
        headers: {
          'Authorization': 'Bearer $bearerToken',
        }
      ));
      if (response.statusCode == 200) {
        return UserModelUserId.fromJson(response.data);
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

  Future<UserModel?> getUser(String address, int port, {String? bearerToken}) async {
    try {
      final String url = 'http://$address:$port/api/v1/player/player';
      final response = await _dio.get(url, options: Options(
          headers: {
            'Authorization': 'Bearer ${bearerToken ?? token}',
          }
      ));
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data['player']);
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching server get user: $e');
      }
      return null;
    }
  }


  Future<UserModel?> getUserFromUserId(String address, int port, UserModelUserId userId) async {
    try {
      print('User ID: ${userId.uuid}');
      final String url = 'http://$address:$port/api/v1/player/player/${userId.uuid}';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data['player']);
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching server get user from id: $e');
      }
      return null;
    }
  }

}