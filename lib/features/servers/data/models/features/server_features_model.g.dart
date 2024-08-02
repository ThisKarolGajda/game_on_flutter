// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_features_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerFeaturesModelImpl _$$ServerFeaturesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerFeaturesModelImpl(
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ServerFeaturesModelImplToJson(
        _$ServerFeaturesModelImpl instance) =>
    <String, dynamic>{
      'features': instance.features,
    };
