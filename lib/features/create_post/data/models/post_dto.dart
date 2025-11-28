import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/features/create_post/domain/entities/post_entity.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
abstract class PostDto with _$PostDto {
  const PostDto._();
  
  const factory PostDto({
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
    ReferencedPostDto? inReplyToPost,
    ReferencedPostDto? repostOf,
    ReferencedPostDto? quoteOf,
    DateTime? deletedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    required PostUserDto user,
    required List<HashtagDto> hashtags,
    required List<MentionDto> mentions,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
      
  PostEntity toEntity() {
    return PostEntity(
      id: id,
      userId: userId,
      content: content,
      contentJson: contentJson,
      visibility: visibility,
      likeCount: likeCount,
      commentCount: commentCount,
      shareCount: shareCount,
      viewCount: viewCount,
      repostCount: repostCount,
      quoteCount: quoteCount,
      mentionCount: mentionCount,
      language: language,
      difficulty: difficulty,
      topics: topics,
      isReported: isReported,
      isPinned: isPinned,
      isFeatured: isFeatured,
      inReplyToPostId: inReplyToPostId,
      inReplyToUserId: inReplyToUserId,
      repostOfId: repostOfId,
      quoteOfId: quoteOfId,
      inReplyToPost: inReplyToPost?.toEntity(),
      repostOf: repostOf?.toEntity(),
      quoteOf: quoteOf?.toEntity(),
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      user: user.toEntity(),
      hashtags: hashtags.map((e) => e.toEntity()).toList(),
      mentions: mentions.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class ReferencedPostDto with _$ReferencedPostDto {
  const ReferencedPostDto._();
  
  const factory ReferencedPostDto({
    required String id,
    required String content,
    required PostUserDto user,
  }) = _ReferencedPostDto;

  factory ReferencedPostDto.fromJson(Map<String, dynamic> json) =>
      _$ReferencedPostDtoFromJson(json);
      
  ReferencedPostEntity toEntity() {
    return ReferencedPostEntity(
      id: id,
      content: content,
      user: user.toEntity(),
    );
  }
}

@freezed
abstract class PostUserDto with _$PostUserDto {
  const PostUserDto._();
  
  const factory PostUserDto({
    required String id,
    required String username,
    required String fullName,
    String? avatar,
    required bool isVerified,
  }) = _PostUserDto;

  factory PostUserDto.fromJson(Map<String, dynamic> json) =>
      _$PostUserDtoFromJson(json);
      
  PostUserEntity toEntity() {
    return PostUserEntity(
      id: id,
      username: username,
      fullName: fullName,
      avatar: avatar,
      isVerified: isVerified,
    );
  }
}

@freezed
abstract class HashtagDto with _$HashtagDto {
  const HashtagDto._();
  
  const factory HashtagDto({
    required int id,
    required String name,
  }) = _HashtagDto;

  factory HashtagDto.fromJson(Map<String, dynamic> json) =>
      _$HashtagDtoFromJson(json);
      
  HashtagEntity toEntity() {
    return HashtagEntity(
      id: id,
      name: name,
    );
  }
}

@freezed
abstract class MentionDto with _$MentionDto {
  const MentionDto._();
  
  const factory MentionDto({
    required String userId,
    required String username,
    required String fullName,
    String? avatar,
  }) = _MentionDto;

  factory MentionDto.fromJson(Map<String, dynamic> json) =>
      _$MentionDtoFromJson(json);
      
  MentionEntity toEntity() {
    return MentionEntity(
      userId: userId,
      username: username,
      fullName: fullName,
      avatar: avatar,
    );
  }
}

@freezed
abstract class CreatePostResponseDto with _$CreatePostResponseDto {
  const factory CreatePostResponseDto({
    required PostDto data,
  }) = _CreatePostResponseDto;

  factory CreatePostResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePostResponseDtoFromJson(json);
}
