import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/post_interaction/data_source/repository/post_interaction_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:uuid/uuid.dart';

part 'post_interaction_event.dart';
part 'post_interaction_state.dart';
part 'post_interaction_bloc.freezed.dart';

@injectable
class PostInteractionBloc extends Bloc<PostInteractionEvent, PostInteractionState> {
  final PostInteractionRepository repository;
  final  Uuid _uuid = Uuid();
  PostInteractionBloc(this.repository) : super(const PostInteractionState(status: InteractionStatus.idle)) {
    on<BookmarkPost>(_onBookmarkPost);
    // Placeholder handlers for future implementation
    on<LikePost>(_onLikePost);
    on<CommentPost>(_onCommentPost);
    on<RepostPost>(_onRepostPost);
    on<SharePost>(_onSharePost);
    on<GetPostById>(_onGetPostById);
  }
  Future<void> _onGetPostById(
    GetPostById event,
    Emitter<PostInteractionState> emit,
  ) async {
    emit(state.copyWith(
      postId: event.postId,
      status: InteractionStatus.loading,
      type: InteractionType.getPost,
      postEntity: null,
    ));

    final result = await repository.getPostById(postId: event.postId);

    result.fold(
      (error) => emit(state.copyWith(
        postId: event.postId,
        message: error,
        status: InteractionStatus.error,
        type: InteractionType.getPost,
      )),
      (post) => emit(state.copyWith(
        postId: event.postId,
        postEntity: post,
        status: InteractionStatus.success,
        type: InteractionType.getPost,
      )),
    );
  }
  Future<void> _onBookmarkPost(
    BookmarkPost event,
    Emitter<PostInteractionState> emit,
  ) async {
    emit(state.copyWith(
      interactionId: _uuid.v4(),
      postId: event.postId, 
      status: InteractionStatus.success, 
      type: InteractionType.bookmark
    ));
    
    final result = await repository.bookmarkPost(postId: event.postId);
    
    result.fold(
      (error) => emit(state.copyWith(
        postId: event.postId,
        message: error,
        type: InteractionType.bookmark,
        status: InteractionStatus.error,
      )),
      (success) {
        // Already emitted success state optimistically, no need to emit again
      },
    );
  }

  Future<void> _onLikePost(
    LikePost event,
    Emitter<PostInteractionState> emit,
  ) async {
    
    if(state.type == InteractionType.unlike){
      // Optimistic UI: emit success state immediately
      emit(state.copyWith(
        postId: event.postId,
        type: InteractionType.like,
        status: InteractionStatus.success,
        interactionId: _uuid.v4(),
      ));
    }else{
      // Optimistic UI: emit success state immediately
      emit(state.copyWith(
        postId: event.postId,
        type: InteractionType.unlike,
        status: InteractionStatus.success,
        interactionId: _uuid.v4(),
      ));
    }

    final result = await repository.likePost(postId: event.postId);

    result.fold(
      (error) => emit(state.copyWith(
        postId: event.postId,
        message: error,
        status: InteractionStatus.error,
      )),
      (success) {
        // Already emitted success state optimistically, no need to emit again
      },
    );
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
