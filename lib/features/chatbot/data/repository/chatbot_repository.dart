import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/chatbot/data/data_source/chatbot_local_data_source.dart';
import 'package:kit/features/chatbot/data/data_source/chatbot_remote_data_source.dart';
import 'package:kit/features/chatbot/data/models/chat_bot_response_dto.dart';
import 'package:kit/features/chatbot/data/models/chat_request_body.dart';
import 'package:kit/features/chatbot/presentation/bloc/chatbot_bloc.dart';
import 'package:uuid/uuid.dart';

abstract class ChatbotRepository {
  Future<Either<String, ChatBotResponseDto>> sendMessage(String message);
  Future<Either<String, List<MyChatMessage>>> getTransformedChatHistory();
}

@Injectable(as: ChatbotRepository)
class ChatbotRepositoryImpl implements ChatbotRepository {
  final ChatbotRemoteDataSource _remoteDataSource;
  final ChatbotLocalDataSource _localDataSource;

  ChatbotRepositoryImpl(this._remoteDataSource, this._localDataSource);
  final _uuid = Uuid();
  @override
  Future<Either<String, ChatBotResponseDto>> sendMessage(String message) async {
    log('Preparing to send message: $message');
    // Get existing chat history to send to API
    final chatHistory = await _localDataSource.getRawChatHistory();
    final chatRequestBody = ChatRequestBody(
      chatContent: message,
      userData: {},
      chatHistory: chatHistory,
    );

    // Save user message locally
    final userMessage = MyChatMessage(
      id: _uuid.v4(), 
      content: message, 
      role: 'user', 
      createdAt: DateTime.now()
    );
    log('Saving user message locally: ${userMessage.content}');
    await _localDataSource.saveTransformedChatHistory(userMessage);
    log('Finished saving user message locally');
    // Send message to remote data source
    log('Sending message to remote data source: ${chatRequestBody.chatContent}');
    final result = await _remoteDataSource.sendMessage(chatRequestBody);
    log('Received response from remote data source');
    result.fold((r) async {
      final errorMessage = MyChatMessage(
        id: _uuid.v4(), 
        content: 'Error Response', 
        role: 'system', 
        createdAt: DateTime.now()
      );
      log('Saving error message locally: ${errorMessage.content}');
      await _localDataSource.saveTransformedChatHistory(errorMessage);
      log('Finished saving error message locally');
      return Left(r);
    }, (r) async {
      final lastMessage = r.toTextMessage();
      log('Saving system message locally: ${lastMessage.content}');
      await _localDataSource.saveRawChatHistory(r.conversation);
      await _localDataSource.saveTransformedChatHistory(lastMessage);
    
      log('Finished saving messages locally');
      return Right(r);
    });
    return result;
  }
  
  @override
  Future<Either<String, List<MyChatMessage>>> getTransformedChatHistory() async {
    try {
      final messages = await _localDataSource.getTransformedChatHistory();
      return Right(messages);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
