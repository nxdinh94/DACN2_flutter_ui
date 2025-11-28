// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostRequestDto _$CreatePostRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreatePostRequestDto(
  content: json['content'] as String,
  visibility: json['visibility'] as String,
  language: json['language'] as String,
  difficulty: json['difficulty'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
  inReplyToPostId: json['inReplyToPostId'] as String?,
  inReplyToUserId: json['inReplyToUserId'] as String?,
  repostOfId: json['repostOfId'] as String?,
  quoteOfId: json['quoteOfId'] as String?,
);

Map<String, dynamic> _$CreatePostRequestDtoToJson(
  _CreatePostRequestDto instance,
) => <String, dynamic>{
  'content': instance.content,
  'visibility': instance.visibility,
  'language': instance.language,
  'difficulty': instance.difficulty,
  'topics': instance.topics,
  'inReplyToPostId': instance.inReplyToPostId,
  'inReplyToUserId': instance.inReplyToUserId,
  'repostOfId': instance.repostOfId,
  'quoteOfId': instance.quoteOfId,
};
