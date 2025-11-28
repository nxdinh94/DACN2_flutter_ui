import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/features/create_post/domain/entities/post_entity.dart';

part 'posts_state.freezed.dart';

@freezed
abstract class PostsState with _$PostsState {
   const factory PostsState.initial() = _PostsInitial;
   const factory PostsState.loading() = _PostsLoading;
    const factory PostsState.loaded({
      required List<PostEntity> posts,
      required bool hasReachedMax,
    }) = _PostsLoaded;
}