// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatbot_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyChatMessage _$MyChatMessageFromJson(Map<String, dynamic> json) =>
    _MyChatMessage(
      id: json['id'] as String,
      content: json['content'] as String,
      role: json['role'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$MyChatMessageToJson(_MyChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
    };
