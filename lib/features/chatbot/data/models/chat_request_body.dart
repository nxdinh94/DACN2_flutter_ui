import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_request_body.freezed.dart';
part 'chat_request_body.g.dart';

@freezed
abstract class ChatRequestBody with _$ChatRequestBody {
  const factory ChatRequestBody({
    @JsonKey(name: 'chat_content') required String chatContent,
    @JsonKey(name: 'chat_history') required List<String> chatHistory,
    @JsonKey(name: 'user_data') required Map<String, dynamic> userData,
  }) = _ChatRequestBody;

  factory ChatRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestBodyFromJson(json);
}
