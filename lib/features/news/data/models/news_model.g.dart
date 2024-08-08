// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      authorUuid: json['authorUuid'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
      'authorUuid': instance.authorUuid,
      'title': instance.title,
      'description': instance.description,
    };
