part of 'chatbot_bloc.dart';

enum ChatbotStatus { idle, sending, success, error, initial}

@freezed
abstract class MyChatMessage with _$MyChatMessage {

  const MyChatMessage._();

  @HiveType(typeId: 0)
  const factory MyChatMessage({
    @HiveField(0) required String id,
    @HiveField(1) required String content,
    @HiveField(2) required String role,
    @HiveField(3) required DateTime createdAt,
  }) = _MyChatMessage;

  factory MyChatMessage.fromJson(Map<String, dynamic> json) =>
      _$MyChatMessageFromJson(json);

  // Convert MyChatMessage to TextMessage to feed into flutter_chat_ui
  TextMessage toTextMessage() {
    return TextMessage(
      id: id,
      authorId: role,
      createdAt: createdAt,
      text: content,
    );
  }
}

@freezed
abstract class ChatbotState with _$ChatbotState {
  const factory ChatbotState({
    @Default([]) List<MyChatMessage> messages,
    @Default(ChatbotStatus.idle) ChatbotStatus status,
    String? errorMessage,
  }) = _ChatbotState;
}
