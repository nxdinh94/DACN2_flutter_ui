

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot_response_entity.freezed.dart';
part 'chat_bot_response_entity.g.dart';
@freezed
abstract class ChatBotResponseEntity with _$ChatBotResponseEntity {
  const factory ChatBotResponseEntity({
    required List<String> conversation,
  }) = _ChatBotResponseEntity;
  factory ChatBotResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ChatBotResponseEntityFromJson(json);
}