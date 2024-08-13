// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerInfoModelImpl _$$ServerInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerInfoModelImpl(
      version: json['version'] as String,
      gameonVersion: json['gameonVersion'] as String,
      maxPlayers: (json['maxPlayers'] as num).toInt(),
      onlinePlayers: (json['onlinePlayers'] as List<dynamic>?)
          ?.map((e) => UserModelUserId.fromJson(e as Map<String, dynamic>))
          .toList(),
      motd: json['motd'] as String,
      uptime: DateTime.parse(json['uptime'] as String),
      allowedDimensions: (json['allowedDimensions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      idleTimeout: (json['idleTimeout'] as num).toInt(),
      enabledPacks: (json['enabledPacks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      disabledPacks: (json['disabledPacks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      defaultGameMode: json['defaultGameMode'] as String,
      simulationDistance: (json['simulationDistance'] as num).toInt(),
      worlds:
          (json['worlds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      viewDistance: (json['viewDistance'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
      whitelistedPlayerUuids: (json['whitelistedPlayerUuids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bannedUserUuids: (json['bannedUserUuids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ServerInfoModelImplToJson(
        _$ServerInfoModelImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'gameonVersion': instance.gameonVersion,
      'maxPlayers': instance.maxPlayers,
      'onlinePlayers': instance.onlinePlayers,
      'motd': instance.motd,
      'uptime': instance.uptime.toIso8601String(),
      'allowedDimensions': instance.allowedDimensions,
      'idleTimeout': instance.idleTimeout,
      'enabledPacks': instance.enabledPacks,
      'disabledPacks': instance.disabledPacks,
      'defaultGameMode': instance.defaultGameMode,
      'simulationDistance': instance.simulationDistance,
      'worlds': instance.worlds,
      'viewDistance': instance.viewDistance,
      'name': instance.name,
      'address': instance.address,
      'whitelistedPlayerUuids': instance.whitelistedPlayerUuids,
      'bannedUserUuids': instance.bannedUserUuids,
    };
