

part of 'create_post_bloc.dart';

@freezed
sealed class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.collectingData({
    String? content,
    List<AssetEntity>? mediaAssetEntities,
    List<File?>? mediaFiles,
    @Default(PostViewScope.PUBLIC) PostViewScope viewScope
  }) = CollectingDataEvent;

  const factory CreatePostEvent.startPost() = StartPostEvent;
  const factory CreatePostEvent.resetCreatePostEvent() = ResetCreatePostEvent;

  const factory CreatePostEvent.removeAnSelectedImage(AssetEntity media) = RemoveAnSelectedImageEvent;
}
