// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatBotResponseEntity _$ChatBotResponseEntityFromJson(
  Map<String, dynamic> json,
) => _ChatBotResponseEntity(
  conversation: (json['conversation'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ChatBotResponseEntityToJson(
  _ChatBotResponseEntity instance,
) => <String, dynamic>{'conversation': instance.conversation};
