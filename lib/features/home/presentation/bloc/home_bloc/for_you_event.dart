part of 'for_you_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  // For You posts events
  const factory HomeEvent.fetchPosts({
    @Default(1) int page,
    @Default(10) int limit,
  }) = FetchHomePosts;
  
  const factory HomeEvent.refreshPosts() = RefreshHomePosts;
  
  const factory HomeEvent.loadMorePosts() = LoadMoreHomePosts;
  
  // Following posts events
  const factory HomeEvent.fetchFollowingPosts({
    @Default(1) int page,
    @Default(10) int limit,
  }) = FetchFollowingPosts;
  
  const factory HomeEvent.refreshFollowingPosts() = RefreshFollowingPosts;
  
  const factory HomeEvent.loadMoreFollowingPosts() = LoadMoreFollowingPosts;
}
