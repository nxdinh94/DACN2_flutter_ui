
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/shared/constants/enum/post_view_scope_enum.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

part 'create_post_bloc.freezed.dart';
part 'create_post_event.dart';
part 'create_post_state.dart';

@injectable
class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  CreatePostBloc() : super(const CreatePostState.initial()) {
    on<CollectingDataEvent>(_onCollectingData);
    on<StartPostEvent>(_onStartPost);
    on<RemoveAnSelectedImageEvent>(_onRemoveAnSelectedImage);
    on<ResetCreatePostEvent>(_onResetCreatePostEvent);
  }
  void _onResetCreatePostEvent(
    ResetCreatePostEvent event,
    Emitter<CreatePostState> emit,
  ) {
    emit(const CreatePostState.initial());
  }
  void _onRemoveAnSelectedImage(
  RemoveAnSelectedImageEvent event,
  Emitter<CreatePostState> emit,
) async {
    final data = state.mapOrNull(collectingData: (value) => value);
    if (data == null) return; // không có dữ liệu để xóa

    // Copy danh sách hiện tại
    final updatedAssets = List<AssetEntity>.from(data.mediaAssetEntities ?? []);
    final updatedFiles = List<File?>.from(data.mediaFiles ?? []);

    // Tìm index của media cần xóa
    final indexToRemove =
        updatedAssets.indexWhere((asset) => asset.id == event.media.id);

    if (indexToRemove != -1) {
      // Xóa file tạm trên ổ đĩa (nếu có)
      final fileToDelete = updatedFiles[indexToRemove];
      if (fileToDelete != null) {
        try {
          // Kiểm tra file có tồn tại trước khi xóa
          if (await fileToDelete.exists()) {
            await fileToDelete.delete();
          } else {
            print('File already deleted or moved: ${fileToDelete.path}');
          }
        } catch (e) {
          print('Failed to delete file: ${fileToDelete.path}, Error: $e');
        }
      }

      // Xóa cả asset và file khỏi danh sách
      updatedAssets.removeAt(indexToRemove);
      updatedFiles.removeAt(indexToRemove);
    }

    // Emit state mới
    emit(data.copyWith(
      mediaAssetEntities: updatedAssets,
      mediaFiles: updatedFiles,
    ));
  }

  void _onStartPost(
    StartPostEvent event,
    Emitter<CreatePostState> emit,
  ) {
    final data = state.mapOrNull(collectingData: (value) => value);
    if (data == null) debugPrint('No data collected for the post.');
    else {
      log('Starting post with content: ${data.content}, '
          'media: ${data.mediaAssetEntities?.length ?? 0}, '
          'viewScope: ${data.viewScope}');
    }
  }

  void _onCollectingData(
    CollectingDataEvent event,
    Emitter<CreatePostState> emit,
  ) async {
    final current = state.mapOrNull(collectingData: (value) => value);

    // Nếu chưa có state collectingData -> khởi tạo mới
    if (current == null) {
      // Convert AssetEntity -> File
      final List<File?> mediaFiles = await Future.wait(
        event.mediaAssetEntities?.map((asset) async => await asset.file) ?? [],
      );

      emit(CreatePostState.collectingData(
        mediaAssetEntities: event.mediaAssetEntities,
        mediaFiles: mediaFiles,
        content: event.content,
        viewScope: event.viewScope,
      ));
      return;
    }

    // Nếu đã có state collectingData -> merge dữ liệu cũ và mới
    // Nếu mediaAssetEntities thay đổi, cần convert sang File
    List<File?>? updatedMediaFiles = current.mediaFiles;
    if (event.mediaAssetEntities != null) {
      updatedMediaFiles = await Future.wait(
        event.mediaAssetEntities!.map((asset) async => await asset.file),
      );
    }

    emit(current.copyWith(
      mediaAssetEntities: event.mediaAssetEntities ?? current.mediaAssetEntities,
      mediaFiles: updatedMediaFiles,
      content: event.content ?? current.content,
      viewScope: event.viewScope,
    ));
  }

}
