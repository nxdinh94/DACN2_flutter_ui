import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/shared/model/upload_media/upload_media_response_dto.dart';

part 'create_post_request_dto.freezed.dart';
part 'create_post_request_dto.g.dart';

@freezed
abstract class CreatePostRequestDto with _$CreatePostRequestDto {
  const factory CreatePostRequestDto({
    required String content,
    required String visibility,
    required String language,
    required String difficulty,
    required List<String> topics,
    List<UploadMediaResponseDto>? media, // After transform from pickedMedia to send to server
    List<String>? pickedMedia,
    String? inReplyToPostId,
    String? inReplyToUserId,
    String? repostOfId,
    String? quoteOfId,
  }) = _CreatePostRequestDto; 

  factory CreatePostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePostRequestDtoFromJson(json);
}
