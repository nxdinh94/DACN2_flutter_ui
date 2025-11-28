

part of 'create_post_bloc.dart';

@freezed
abstract class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial() = CreatePostInitial;

  const factory CreatePostState.loading() = CreatePostLoading;

  const factory CreatePostState.success() = CreatePostSuccess;

  const factory CreatePostState.error({required String message}) = CreatePostError;

  const factory CreatePostState.collectingData({
    String? content,
    List<AssetEntity>? mediaAssetEntities,
    List<File?>? mediaFiles,
    List<Uint8List>? cachedThumbnails,
    @Default(PostViewScope.public) PostViewScope viewScope
  }) = CreatePostCollectingData;
}