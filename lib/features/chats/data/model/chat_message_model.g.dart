// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      source: json['source'] as String,
      message: json['message'] as String,
      uuid: json['uuid'] as String,
      nickname: json['nickname'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'message': instance.message,
      'uuid': instance.uuid,
      'nickname': instance.nickname,
      'date': instance.date.toIso8601String(),
    };
