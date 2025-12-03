part of 'post_interaction_bloc.dart';

@freezed
sealed class PostInteractionEvent with _$PostInteractionEvent {
  // Get a post by ID 
  const factory PostInteractionEvent.getPostById({required String postId}) = GetPostById;
  
  // Bookmark
  const factory PostInteractionEvent.bookmarkPost({required String postId}) = BookmarkPost;
  
  // Like (placeholder for future implementation)
  const factory PostInteractionEvent.likePost({required String postId}) = LikePost;
  
  // Comment (placeholder for future implementation)
  const factory PostInteractionEvent.commentPost({required String postId, required String content}) = CommentPost;
  
  // Repost (placeholder for future implementation)
  const factory PostInteractionEvent.repostPost({required String postId}) = RepostPost;
  
  // Share (placeholder for future implementation)
  const factory PostInteractionEvent.sharePost({required String postId}) = SharePost;
}
