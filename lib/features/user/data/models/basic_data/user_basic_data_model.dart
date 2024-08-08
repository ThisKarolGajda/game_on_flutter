import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_basic_data_model.freezed.dart';
part 'user_basic_data_model.g.dart';

@freezed
class UserBasicDataModel with _$UserBasicDataModel {
  const factory UserBasicDataModel({
    required String nickname,
    required String uuid,
  }) = _UserBasicDataModel;

  factory UserBasicDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserBasicDataModelFromJson(json);
}
