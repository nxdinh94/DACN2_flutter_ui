// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostDto _$PostDtoFromJson(Map<String, dynamic> json) => _PostDto(
  id: json['id'] as String,
  userId: json['userId'] as String,
  content: json['content'] as String,
  contentJson: json['contentJson'] as String?,
  visibility: json['visibility'] as String,
  likeCount: (json['likeCount'] as num).toInt(),
  commentCount: (json['commentCount'] as num).toInt(),
  shareCount: (json['shareCount'] as num).toInt(),
  viewCount: (json['viewCount'] as num).toInt(),
  repostCount: (json['repostCount'] as num).toInt(),
  quoteCount: (json['quoteCount'] as num).toInt(),
  mentionCount: (json['mentionCount'] as num).toInt(),
  language: json['language'] as String,
  difficulty: json['difficulty'] as String,
  topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
  isReported: json['isReported'] as bool,
  isPinned: json['isPinned'] as bool,
  isFeatured: json['isFeatured'] as bool,
  inReplyToPostId: json['inReplyToPostId'] as String?,
  inReplyToUserId: json['inReplyToUserId'] as String?,
  repostOfId: json['repostOfId'] as String?,
  quoteOfId: json['quoteOfId'] as String?,
  inReplyToPost: json['inReplyToPost'] == null
      ? null
      : ReferencedPostDto.fromJson(
          json['inReplyToPost'] as Map<String, dynamic>,
        ),
  repostOf: json['repostOf'] == null
      ? null
      : ReferencedPostDto.fromJson(json['repostOf'] as Map<String, dynamic>),
  quoteOf: json['quoteOf'] == null
      ? null
      : ReferencedPostDto.fromJson(json['quoteOf'] as Map<String, dynamic>),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  user: PostUserDto.fromJson(json['user'] as Map<String, dynamic>),
  hashtags: (json['hashtags'] as List<dynamic>)
      .map((e) => HashtagDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  mentions: (json['mentions'] as List<dynamic>)
      .map((e) => MentionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostDtoToJson(_PostDto instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'content': instance.content,
  'contentJson': instance.contentJson,
  'visibility': instance.visibility,
  'likeCount': instance.likeCount,
  'commentCount': instance.commentCount,
  'shareCount': instance.shareCount,
  'viewCount': instance.viewCount,
  'repostCount': instance.repostCount,
  'quoteCount': instance.quoteCount,
  'mentionCount': instance.mentionCount,
  'language': instance.language,
  'difficulty': instance.difficulty,
  'topics': instance.topics,
  'isReported': instance.isReported,
  'isPinned': instance.isPinned,
  'isFeatured': instance.isFeatured,
  'inReplyToPostId': instance.inReplyToPostId,
  'inReplyToUserId': instance.inReplyToUserId,
  'repostOfId': instance.repostOfId,
  'quoteOfId': instance.quoteOfId,
  'inReplyToPost': instance.inReplyToPost,
  'repostOf': instance.repostOf,
  'quoteOf': instance.quoteOf,
  'deletedAt': instance.deletedAt?.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'user': instance.user,
  'hashtags': instance.hashtags,
  'mentions': instance.mentions,
};

_ReferencedPostDto _$ReferencedPostDtoFromJson(Map<String, dynamic> json) =>
    _ReferencedPostDto(
      id: json['id'] as String,
      content: json['content'] as String,
      user: PostUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferencedPostDtoToJson(_ReferencedPostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'user': instance.user,
    };

_PostUserDto _$PostUserDtoFromJson(Map<String, dynamic> json) => _PostUserDto(
  id: json['id'] as String,
  username: json['username'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String?,
  isVerified: json['isVerified'] as bool,
);

Map<String, dynamic> _$PostUserDtoToJson(_PostUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'isVerified': instance.isVerified,
    };

_HashtagDto _$HashtagDtoFromJson(Map<String, dynamic> json) =>
    _HashtagDto(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$HashtagDtoToJson(_HashtagDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_MentionDto _$MentionDtoFromJson(Map<String, dynamic> json) => _MentionDto(
  userId: json['userId'] as String,
  username: json['username'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$MentionDtoToJson(_MentionDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
    };

_CreatePostResponseDto _$CreatePostResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CreatePostResponseDto(
  data: PostDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreatePostResponseDtoToJson(
  _CreatePostResponseDto instance,
) => <String, dynamic>{'data': instance.data};
