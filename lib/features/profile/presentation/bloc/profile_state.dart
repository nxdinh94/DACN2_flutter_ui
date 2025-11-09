part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.loaded({
    required UserInfoEntity userInfo,
  }) = ProfileLoaded;
  
  const factory ProfileState.error({required String message}) = ProfileError;
}