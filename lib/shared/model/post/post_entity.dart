import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
abstract class PostEntity with _$PostEntity {
  const factory PostEntity({
    required String id,
    required String userId,
    required String content,
    String? contentJson,
    required String visibility,
    required int likeCount,
    required int commentCount,
    required int shareCount,
    required int viewCount,
    required int repostCount,
    required int quoteCount,
    required int mentionCount,
    required String language,
    required String difficulty,
    required List<String> topics,
    required bool isReported,
    required bool isPinned,
    required bool isFeatured,
    String? inReplyToPostId,
    String? inReplyToUserId,
    String? repostOfId,
    String? quoteOfId,
    ReferencedPostEntity? inReplyToPost,
    ReferencedPostEntity? repostOf,
    ReferencedPostEntity? quoteOf,
    DateTime? deletedAt,
    required String createdAt,
    required String updatedAt,
    DateTime? bookmarkedAt,
    required PostUserEntity user,
    required List<HashtagEntity> hashtags,
    required List<MentionEntity> mentions,
    @Default([]) List<MediaEntity> media,
  }) = _PostEntity;
}

@freezed
abstract class MediaEntity with _$MediaEntity {
  const factory MediaEntity({
    required String id,
    required String url,
    required String type,
    required int ordinal,
    String? metadata,
  }) = _MediaEntity;
}

@freezed
abstract class ReferencedPostEntity with _$ReferencedPostEntity {
  const factory ReferencedPostEntity({
    required String id,
    required String content,
    required PostUserEntity user,
  }) = _ReferencedPostEntity;
}

@freezed
abstract class PostUserEntity with _$PostUserEntity {
  const factory PostUserEntity({
    required String id,
    required String username,
    required String fullName,
    String? avatar,
    required bool isVerified,
  }) = _PostUserEntity;
}

@freezed
abstract class HashtagEntity with _$HashtagEntity {
  const factory HashtagEntity({
    required int id,
    required String name,
  }) = _HashtagEntity;
}

@freezed
abstract class MentionEntity with _$MentionEntity {
  const factory MentionEntity({
    required String userId,
    required String username,
    required String fullName,
    String? avatar,
  }) = _MentionEntity;
}
