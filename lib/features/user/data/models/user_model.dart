import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  factory UserModel({
    required UserModelUserId userId,
    required List<UserModelPlayerDeath> playerDeaths,
    required List<UserModelPlayerKill> playerKills,
    required UserModelPlayerReputation playerReputation,
    required List<UserModelPlayerActivity> playerActivities,
    required DateTime firstJoinDate,
    required DateTime lastJoinDate,
    required DateTime lastQuitDate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  bool isOnline() => lastJoinDate.isAfter(lastQuitDate);
}

@freezed
class UserModelUserId with _$UserModelUserId {
  factory UserModelUserId({
    required String uuid,
    required String nickname,
  }) = _UserModelUserId;

  factory UserModelUserId.fromJson(Map<String, dynamic> json) =>
      _$UserModelUserIdFromJson(json);
}

@freezed
class UserModelPlayerDeath with _$UserModelPlayerDeath {
  factory UserModelPlayerDeath({
    required String type,
    required DateTime date,
    String? object
  }) = _UserModelPlayerDeath;

  factory UserModelPlayerDeath.fromJson(Map<String, dynamic> json) =>
      _$UserModelPlayerDeathFromJson(json);
}

@freezed
class UserModelPlayerKill with _$UserModelPlayerKill {
  factory UserModelPlayerKill({
    required UserModelUserId killed,
    required String killType,
    required DateTime date,
  }) = _UserModelPlayerKill;

  factory UserModelPlayerKill.fromJson(Map<String, dynamic> json) =>
      _$UserModelPlayerKillFromJson(json);
}

@freezed
class UserModelPlayerReputation with _$UserModelPlayerReputation {
  factory UserModelPlayerReputation({
    required List<dynamic> liked,
    required List<dynamic> disliked,
  }) = _UserModelPlayerReputation;

  factory UserModelPlayerReputation.fromJson(Map<String, dynamic> json) =>
      _$UserModelPlayerReputationFromJson(json);
}

@freezed
class UserModelPlayerActivity with _$UserModelPlayerActivity {
  factory UserModelPlayerActivity({
    required String type,
    required DateTime start,
    required DateTime end,
  }) = _UserModelPlayerActivity;

  factory UserModelPlayerActivity.fromJson(Map<String, dynamic> json) =>
      _$UserModelPlayerActivityFromJson(json);
}
