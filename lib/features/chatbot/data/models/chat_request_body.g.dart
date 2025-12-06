// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRequestBody _$ChatRequestBodyFromJson(Map<String, dynamic> json) =>
    _ChatRequestBody(
      chatContent: json['chat_content'] as String,
      chatHistory: (json['chat_history'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      userData: json['user_data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$ChatRequestBodyToJson(_ChatRequestBody instance) =>
    <String, dynamic>{
      'chat_content': instance.chatContent,
      'chat_history': instance.chatHistory,
      'user_data': instance.userData,
    };
