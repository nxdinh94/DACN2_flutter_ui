import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/post_interaction/data_source/repository/post_interaction_repository.dart';

part 'post_interaction_event.dart';
part 'post_interaction_state.dart';
part 'post_interaction_bloc.freezed.dart';

@injectable
class PostInteractionBloc extends Bloc<PostInteractionEvent, PostInteractionState> {
  final PostInteractionRepository repository;

  PostInteractionBloc(this.repository) : super(const PostInteractionState.initial()) {
    on<BookmarkPost>(_onBookmarkPost);
    // Placeholder handlers for future implementation
    on<LikePost>(_onLikePost);
    on<CommentPost>(_onCommentPost);
    on<RepostPost>(_onRepostPost);
    on<SharePost>(_onSharePost);
  }

  Future<void> _onBookmarkPost(
    BookmarkPost event,
    Emitter<PostInteractionState> emit,
  ) async {
    emit(PostInteractionState.bookmarkLoading(postId: event.postId));
    
    final result = await repository.bookmarkPost(postId: event.postId);
    
    result.fold(
      (error) => emit(PostInteractionState.bookmarkError(
        postId: event.postId,
        message: error,
      )),
      (success) => emit(PostInteractionState.bookmarkSuccess(postId: event.postId)),
    );
  }

  // Placeholder handlers for future implementation
  Future<void> _onLikePost(
    LikePost event,
    Emitter<PostInteractionState> emit,
  ) async {
    // TODO: Implement like post functionality
  }

  Future<void> _onCommentPost(
    CommentPost event,
    Emitter<PostInteractionState> emit,
  ) async {
    // TODO: Implement comment post functionality
  }

  Future<void> _onRepostPost(
    RepostPost event,
    Emitter<PostInteractionState> emit,
  ) async {
    // TODO: Implement repost functionality
  }

  Future<void> _onSharePost(
    SharePost event,
    Emitter<PostInteractionState> emit,
  ) async {
    // TODO: Implement share post functionality
  }
}
