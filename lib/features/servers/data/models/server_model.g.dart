// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerModelImpl _$$ServerModelImplFromJson(Map<String, dynamic> json) =>
    _$ServerModelImpl(
      features: json['features'] == null
          ? null
          : ServerFeaturesModel.fromJson(
              json['features'] as Map<String, dynamic>),
      info: json['info'] == null
          ? null
          : ServerInfoModel.fromJson(json['info'] as Map<String, dynamic>),
      basicData: ServerBasicDataModel.fromJson(
          json['basicData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerModelImplToJson(_$ServerModelImpl instance) =>
    <String, dynamic>{
      'features': instance.features,
      'info': instance.info,
      'basicData': instance.basicData,
    };
