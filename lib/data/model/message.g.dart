// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      text: json['text'] as String,
      user: json['user'] as String,
      createdAt: _dateFromJson(json['createdAt'] as Timestamp),
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'text': instance.text,
      'user': instance.user,
      'createdAt': _dateToJson(instance.createdAt),
      'avatarUrl': instance.avatarUrl,
    };
