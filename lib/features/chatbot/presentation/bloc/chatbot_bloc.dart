import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/chatbot/data/repository/chatbot_repository.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
part 'chatbot_event.dart';
part 'chatbot_state.dart';

part 'chatbot_bloc.freezed.dart';
part 'chatbot_bloc.g.dart';
@injectable
class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  final ChatbotRepository _repository;
  final _uuid = Uuid();
  ChatbotBloc(this._repository) : super(const ChatbotState()) {
    on<SendMessage>(_onSendMessage);
    on<ClearChat>(_onClearChat);
    on<ChatBotInitial>(_onChatBotInitial);
  }
  Future<void> _onChatBotInitial(
    ChatBotInitial event,
    Emitter<ChatbotState> emit,
  ) async {

    if(state.messages.isNotEmpty){
      log('Chat history already loaded, skipping fetch.');
      return;
    }

    final result = await _repository.getTransformedChatHistory();
    result.fold(
      (error) {
        emit(state.copyWith(
          status: ChatbotStatus.error,
          errorMessage: error,
        ));
      },
      (messages) {
        emit(state.copyWith(
          status: ChatbotStatus.initial,
          messages: messages,
          errorMessage: null,
        ));
      },
    );
  }
  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatbotState> emit,
  ) async {

    final oldMessage =  state.messages.map((e) => e).toList();
    emit(state.copyWith(
      status: ChatbotStatus.sending,
      messages: [
        ...oldMessage,
        MyChatMessage(
          id: _uuid.v4(),
          content: event.message,
          role: 'user',
          createdAt: DateTime.now(),
        ),
      ],
    ));

    // Send message to API
    final result = await _repository.sendMessage(event.message);
    result.fold(
      (error){
        final errorMessage = MyChatMessage(
          id: _uuid.v4(), 
          content: 'Error Response', 
          role: 'system', 
          createdAt: DateTime.now()
        );
        emit(state.copyWith(
          status: ChatbotStatus.error,
          errorMessage: error,
          messages: [...state.messages, errorMessage],
        ));
      },
      (response) {
        log('Chatbot response received: ${response.conversation.last}');
        // Extract bot response from conversation (last message)
        final botResponse = MyChatMessage(
          id: _uuid.v4(),
          content: response.conversation.last,
          role: 'system',
          createdAt: DateTime.now(),
        );
        
        emit(state.copyWith(
          messages: [...state.messages, botResponse],
          status: ChatbotStatus.success,
          errorMessage: null,
        ));
      },
    );
  }

  void _onClearChat(ClearChat event, Emitter<ChatbotState> emit) {
    emit(const ChatbotState());
  }
}
