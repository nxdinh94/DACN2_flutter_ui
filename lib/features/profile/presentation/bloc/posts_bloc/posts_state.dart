part of 'posts_bloc.dart';


@freezed
abstract class PostsState with _$PostsState {
  const factory PostsState.initial() = PostsInitial;
  const factory PostsState.loading() = PostsLoading;
  const factory PostsState.loaded({
    @Default(<PostEntity>[]) List<PostEntity> selfPosts,
    @Default(<PostEntity>[]) List<PostEntity> likedPosts,
    @Default(<PostEntity>[]) List<PostEntity> bookmarkedPosts,
  }) = PostsLoaded;
  const factory PostsState.error({required String message}) = PostsError;
}