part of 'for_you_bloc.dart';

@freezed
sealed class ForYouEvent with _$ForYouEvent {
  const factory ForYouEvent.fetchPosts({
    @Default(1) int page,
    @Default(10) int limit,
  }) = FetchForYouPosts;
  
  const factory ForYouEvent.refreshPosts() = RefreshForYouPosts;
  
  const factory ForYouEvent.loadMorePosts() = LoadMoreForYouPosts;
}
