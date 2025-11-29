part of 'post_interaction_bloc.dart';

@freezed
sealed class PostInteractionState with _$PostInteractionState {
  const factory PostInteractionState.initial() = PostInteractionInitial;
  
  // Bookmark states
  const factory PostInteractionState.bookmarkLoading({required String postId}) = BookmarkLoading;
  const factory PostInteractionState.bookmarkSuccess({required String postId}) = BookmarkSuccess;
  const factory PostInteractionState.bookmarkError({required String postId, required String message}) = BookmarkError;
  
  // Like states (placeholder for future implementation)
  const factory PostInteractionState.likeLoading({required String postId}) = LikeLoading;
  const factory PostInteractionState.likeSuccess({required String postId}) = LikeSuccess;
  const factory PostInteractionState.likeError({required String postId, required String message}) = LikeError;
  
  // Comment states (placeholder for future implementation)
  const factory PostInteractionState.commentLoading({required String postId}) = CommentLoading;
  const factory PostInteractionState.commentSuccess({required String postId}) = CommentSuccess;
  const factory PostInteractionState.commentError({required String postId, required String message}) = CommentError;
  
  // Repost states (placeholder for future implementation)
  const factory PostInteractionState.repostLoading({required String postId}) = RepostLoading;
  const factory PostInteractionState.repostSuccess({required String postId}) = RepostSuccess;
  const factory PostInteractionState.repostError({required String postId, required String message}) = RepostError;
  
  // Share states (placeholder for future implementation)
  const factory PostInteractionState.shareLoading({required String postId}) = ShareLoading;
  const factory PostInteractionState.shareSuccess({required String postId}) = ShareSuccess;
  const factory PostInteractionState.shareError({required String postId, required String message}) = ShareError;
}
