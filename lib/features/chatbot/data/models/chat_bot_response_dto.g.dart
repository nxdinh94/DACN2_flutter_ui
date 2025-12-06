// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatBotResponseDto _$ChatBotResponseDtoFromJson(Map<String, dynamic> json) =>
    _ChatBotResponseDto(
      conversation: (json['conversation'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChatBotResponseDtoToJson(_ChatBotResponseDto instance) =>
    <String, dynamic>{'conversation': instance.conversation};
