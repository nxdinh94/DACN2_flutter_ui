import 'dart:developer';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/hive_client.dart';
import 'package:kit/core/utils/app_utils.dart';

import '../../presentation/bloc/chatbot_bloc.dart';
abstract class ChatbotLocalDataSource {
  Future<void> saveRawChatHistory(List<String> conversation);
  Future<List<MyChatMessage>> getTransformedChatHistory();
  Future<List<String>> getRawChatHistory();
  Future<void> saveTransformedChatHistory(MyChatMessage message);

}


@Singleton(as : ChatbotLocalDataSource)
class ChatbotLocalDataSourceImpl implements ChatbotLocalDataSource {

  final HiveClient hiveClient;
  ChatbotLocalDataSourceImpl({required this.hiveClient});

  final String rawKey = 'raw_chat_history';
  final String transformedKey = 'transformed_chat_history';

  @override
  Future<void> saveRawChatHistory(List<String> conversation) async {
    await hiveClient.put(AppConstants.chatBotHistoryBox, rawKey, {'conversation': conversation});
  }
  
  @override
  Future<void> saveTransformedChatHistory(MyChatMessage message) async {
    final existingData = await hiveClient.get(AppConstants.chatBotHistoryBox, transformedKey);
      if(existingData != null) {
        final Map<String, dynamic> dataMap = Map<String, dynamic>.from(existingData as Map);
        final List<dynamic> dataList = List<dynamic>.from(dataMap['messages'] as List);
        dataList.add(message);
        await hiveClient.put(AppConstants.chatBotHistoryBox, transformedKey, {'messages': dataList});
      } else {
        await hiveClient.put(AppConstants.chatBotHistoryBox, transformedKey, {'messages': [message]});
      }

  }
  
  @override
  Future<List<String>> getRawChatHistory() async {
    final existingData = await hiveClient.get(AppConstants.chatBotHistoryBox, rawKey);
    if(existingData != null) {
      final data = Map<String, dynamic>.from(existingData as Map);
      final List<dynamic> conversation = List<dynamic>.from(data['conversation'] as List);
      return conversation.map((e) => e.toString()).toList();
    } else {
      return [];
    }
  }
  
  @override
  Future<List<MyChatMessage>> getTransformedChatHistory() async{
    final existingData = await hiveClient.get(AppConstants.chatBotHistoryBox, transformedKey);
    if(existingData != null) {
      log('Existing transformed chat history data: $existingData');
      final Map<String, dynamic> dataMap = Map<String, dynamic>.from(existingData as Map);
      final List<dynamic> dataList = List<dynamic>.from(dataMap['messages'] as List);
      log('Retrieved transformed chat history: $dataList');
      final messages = dataList.map((e) => MyChatMessage.fromJson(Map<String, dynamic>.from(e))).toList();
      return messages;
    } else {
      return [];
    }
  }

}