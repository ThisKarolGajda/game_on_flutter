import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String id,
    required DateTime creationDate,
    required String authorUuid,
    required String title,
    required String description,
}) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);
}