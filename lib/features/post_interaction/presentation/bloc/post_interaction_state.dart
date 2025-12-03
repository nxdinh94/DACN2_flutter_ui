part of 'post_interaction_bloc.dart';

enum InteractionType {
  none,
  bookmark,
  like,
  comment,
  repost,
  share,
  getPost,
}

enum InteractionStatus {
  idle,
  loading,
  success,
  error,
}

@freezed
abstract class PostInteractionState with _$PostInteractionState {
  const factory PostInteractionState({
    @Default(InteractionType.none) InteractionType type,
    @Default(InteractionStatus.idle) InteractionStatus status,
    String? postId,
    String? message,
    PostEntity? postEntity,
    String? interactionId,
  }) = _PostInteractionState;
}
