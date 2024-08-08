import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_on/features/user/data/models/basic_data/user_basic_data_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required UserBasicDataModel basicData,
}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}