import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required UserId id,
    required bool online,
    required UserPrivilegeType privilege,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserId with _$UserId {
  const factory UserId({
    required String uuid,
    required String username,
  }) = _UserId;

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

enum UserPrivilegeType {
  guest,
  member,
  admin,
}
