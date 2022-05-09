// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      text: json['text'] as String,
      user: json['user'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'text': instance.text,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'avatarUrl': instance.avatarUrl,
    };
