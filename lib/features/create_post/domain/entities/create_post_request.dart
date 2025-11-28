import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_request.freezed.dart';

@freezed
abstract class CreatePostRequest with _$CreatePostRequest {
  const factory CreatePostRequest({
    required String content,
    required String visibility,
    required String language,
    required String difficulty,
    required List<String> topics,
    String? inReplyToPostId,
    String? inReplyToUserId,
    String? repostOfId,
    String? quoteOfId,
  }) = _CreatePostRequest;
}
