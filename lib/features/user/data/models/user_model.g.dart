// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: UserId.fromJson(json['id'] as Map<String, dynamic>),
      online: json['online'] as bool,
      privilege: $enumDecode(_$UserPrivilegeTypeEnumMap, json['privilege']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'online': instance.online,
      'privilege': _$UserPrivilegeTypeEnumMap[instance.privilege]!,
    };

const _$UserPrivilegeTypeEnumMap = {
  UserPrivilegeType.guest: 'guest',
  UserPrivilegeType.member: 'member',
  UserPrivilegeType.admin: 'admin',
};

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
    };
