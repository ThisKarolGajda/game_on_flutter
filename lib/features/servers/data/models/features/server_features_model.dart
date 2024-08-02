import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_features_model.freezed.dart';
part 'server_features_model.g.dart';

@freezed
class ServerFeaturesModel with _$ServerFeaturesModel {
  const factory ServerFeaturesModel({
    required List<String> features,
  }) = _ServerFeaturesModel;

  factory ServerFeaturesModel.fromJson(Map<String, dynamic> json) => _$ServerFeaturesModelFromJson(json);
}