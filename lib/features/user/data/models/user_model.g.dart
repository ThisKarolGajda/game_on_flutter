// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: UserModelUserId.fromJson(json['userId'] as Map<String, dynamic>),
      playerDeaths: (json['playerDeaths'] as List<dynamic>)
          .map((e) => UserModelPlayerDeath.fromJson(e as Map<String, dynamic>))
          .toList(),
      playerKills: (json['playerKills'] as List<dynamic>)
          .map((e) => UserModelPlayerKill.fromJson(e as Map<String, dynamic>))
          .toList(),
      playerReputation: UserModelPlayerReputation.fromJson(
          json['playerReputation'] as Map<String, dynamic>),
      playerActivities: (json['playerActivities'] as List<dynamic>)
          .map((e) =>
              UserModelPlayerActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstJoinDate: DateTime.parse(json['firstJoinDate'] as String),
      lastJoinDate: DateTime.parse(json['lastJoinDate'] as String),
      lastQuitDate: DateTime.parse(json['lastQuitDate'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'playerDeaths': instance.playerDeaths,
      'playerKills': instance.playerKills,
      'playerReputation': instance.playerReputation,
      'playerActivities': instance.playerActivities,
      'firstJoinDate': instance.firstJoinDate.toIso8601String(),
      'lastJoinDate': instance.lastJoinDate.toIso8601String(),
      'lastQuitDate': instance.lastQuitDate.toIso8601String(),
    };

_$UserModelUserIdImpl _$$UserModelUserIdImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelUserIdImpl(
      uuid: json['uuid'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$UserModelUserIdImplToJson(
        _$UserModelUserIdImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'nickname': instance.nickname,
    };

_$UserModelPlayerDeathImpl _$$UserModelPlayerDeathImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelPlayerDeathImpl(
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      object: json['object'] as String?,
    );

Map<String, dynamic> _$$UserModelPlayerDeathImplToJson(
        _$UserModelPlayerDeathImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'object': instance.object,
    };

_$UserModelPlayerKillImpl _$$UserModelPlayerKillImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelPlayerKillImpl(
      killed: UserModelUserId.fromJson(json['killed'] as Map<String, dynamic>),
      killType: json['killType'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$UserModelPlayerKillImplToJson(
        _$UserModelPlayerKillImpl instance) =>
    <String, dynamic>{
      'killed': instance.killed,
      'killType': instance.killType,
      'date': instance.date.toIso8601String(),
    };

_$UserModelPlayerReputationImpl _$$UserModelPlayerReputationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelPlayerReputationImpl(
      liked: json['liked'] as List<dynamic>,
      disliked: json['disliked'] as List<dynamic>,
    );

Map<String, dynamic> _$$UserModelPlayerReputationImplToJson(
        _$UserModelPlayerReputationImpl instance) =>
    <String, dynamic>{
      'liked': instance.liked,
      'disliked': instance.disliked,
    };

_$UserModelPlayerActivityImpl _$$UserModelPlayerActivityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelPlayerActivityImpl(
      type: json['type'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$$UserModelPlayerActivityImplToJson(
        _$UserModelPlayerActivityImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
