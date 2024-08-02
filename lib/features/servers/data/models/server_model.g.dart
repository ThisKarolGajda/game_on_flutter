// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_model.dart';

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

_$ServerListImpl _$$ServerListImplFromJson(Map<String, dynamic> json) =>
    _$ServerListImpl(
      servers: (json['servers'] as List<dynamic>)
          .map((e) => ServerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerListImplToJson(_$ServerListImpl instance) =>
    <String, dynamic>{
      'servers': instance.servers,
    };
