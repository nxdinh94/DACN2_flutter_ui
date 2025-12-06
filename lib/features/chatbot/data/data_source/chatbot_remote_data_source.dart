import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client_ai.dart';
import 'package:kit/features/chatbot/data/models/chat_bot_response_dto.dart';
import 'package:kit/features/chatbot/data/models/chat_request_body.dart';

abstract class ChatbotRemoteDataSource {
  Future<Either<String, ChatBotResponseDto>> sendMessage(ChatRequestBody message);
}

@Injectable(as: ChatbotRemoteDataSource)
class ChatbotRemoteDataSourceImpl implements ChatbotRemoteDataSource {
  final DioClientAI dioClientAI;
  ChatbotRemoteDataSourceImpl({required this.dioClientAI});

  @override
  Future<Either<String, ChatBotResponseDto>> sendMessage(ChatRequestBody message) async {
    try {
      final response = await dioClientAI.post(
        '/chatbot',
        data: message.toJson(),
      );
      return response.fold((l) => Left(l.toString()),
      (r) {
        // remove key "status" from r.data
        final data = Map<String, dynamic>.from(r.data);
        data.remove('status');
        final responseDto = ChatBotResponseDto.fromJson(data);
        return Right(responseDto);
      });

    } catch (e) {
      return Left(e.toString());
    }
  }
}
