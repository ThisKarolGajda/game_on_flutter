import 'package:game_on/common/util/exports.dart';
import 'package:game_on/features/news/data/models/news_model.dart';

class GameonNewsApi {
  final Dio _dio;

  GameonNewsApi(this._dio);

  Future<NewsModel?> getLatestNews(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/news/latest';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = response.data;
        return NewsModel.fromJson(json['news']);
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

  Future<List<NewsModel>> getAllNews(String address, int port) async {
    try {
      final String url = 'http://$address:$port/api/v1/news/all';
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> json = response.data['news'];
        return json.map((dynamic item) {
          if (item is Map<String, dynamic>) {
            return NewsModel.fromJson(item);
          } else {
            throw Exception('Invalid data format');
          }
        }).toList();
      } else {
        return [];
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching server info: $e');
      }
      return [];
    }
  }
}
