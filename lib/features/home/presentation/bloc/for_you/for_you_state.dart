part of 'for_you_bloc.dart';

@freezed
sealed class ForYouState with _$ForYouState {
  const factory ForYouState.initial() = ForYouInitial;
  
  const factory ForYouState.loading() = ForYouLoading;
  
  const factory ForYouState.loaded({
    required List<PostEntity> posts,
    @Default(1) int currentPage,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = ForYouLoaded;
  
  const factory ForYouState.error({
    required String message,
  }) = ForYouError;
}
