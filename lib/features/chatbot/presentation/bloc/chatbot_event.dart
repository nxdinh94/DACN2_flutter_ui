part of 'chatbot_bloc.dart';

@freezed
sealed class ChatbotEvent with _$ChatbotEvent {
  const factory ChatbotEvent.sendMessage({required String message}) = SendMessage;
  const factory ChatbotEvent.clearChat() = ClearChat;
  const factory ChatbotEvent.initial() = ChatBotInitial;
}
