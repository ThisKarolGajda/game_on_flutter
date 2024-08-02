// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_basic_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerModelImpl _$$ServerModelImplFromJson(Map<String, dynamic> json) =>
    _$ServerModelImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      port: (json['port'] as num).toInt(),
      image: json['image'] as String,
      featured: json['featured'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ServerModelImplToJson(_$ServerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'port': instance.port,
      'image': instance.image,
      'featured': instance.featured,
      'description': instance.description,
    };
