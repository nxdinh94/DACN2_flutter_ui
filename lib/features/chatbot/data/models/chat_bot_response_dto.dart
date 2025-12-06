import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/features/chatbot/data/repository/chat_bot_response_entity.dart';
import 'package:kit/features/chatbot/presentation/bloc/chatbot_bloc.dart';
import 'package:uuid/uuid.dart';

part 'chat_bot_response_dto.freezed.dart';
part 'chat_bot_response_dto.g.dart';

@freezed
abstract class ChatBotResponseDto with _$ChatBotResponseDto {
  const factory ChatBotResponseDto({
    required List<String> conversation,
  }) = _ChatBotResponseDto;

  factory ChatBotResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ChatBotResponseDtoFromJson(json);
}

extension ChatBotResponseDtoX on ChatBotResponseDto {
  MyChatMessage toTextMessage() {
    var uuid = Uuid();
    String id = uuid.v4();
    return MyChatMessage(
      id: id,
      content: conversation.last,
      role: 'system',
      createdAt: DateTime.now(),
    );
  }

  ChatBotResponseEntity toEntity() {
    return ChatBotResponseEntity(
      conversation: conversation,
    );
  }
}
