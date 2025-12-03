part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  
  const factory HomeState.loading() = HomeLoading;
  
  const factory HomeState.loaded({
    // For You posts
    @Default(<PostEntity>[]) List<PostEntity> forYouPost,
    @Default(1) int forYouCurrentPage,
    @Default(false) bool forYouHasReachedMax,
    @Default(false) bool forYouIsLoadingMore,
    // Following posts
    @Default(<PostEntity>[]) List<PostEntity> followingPost,
    @Default(1) int followingCurrentPage,
    @Default(false) bool followingHasReachedMax,
    @Default(false) bool followingIsLoadingMore,
    @Default(false) bool followingIsLoading,
    // Legacy fields for backward compatibility
    @Default(1) int currentPage,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = HomeLoaded;
  
  const factory HomeState.error({
    required String message,
  }) = HomeError;
}
