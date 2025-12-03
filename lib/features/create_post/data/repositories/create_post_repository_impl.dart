
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/create_post/data/data_source/create_post_data_source.dart';
import 'package:kit/features/create_post/data/models/create_post_request_dto.dart';
import 'package:kit/features/create_post/domain/repositories/create_post_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_dto.dart';
import 'package:kit/shared/model/upload_media/upload_media_response_dto.dart';
import 'package:kit/shared/services/upload_post_media.dart';

@Injectable(as: CreatePostRepository)
class CreatePostRepositoryImpl implements CreatePostRepository {
  final CreatePostDataSource dataSource;
  final UploadMediaPostService uploadMediaService;

  CreatePostRepositoryImpl(this.dataSource, this.uploadMediaService);

  @override
  Future<Either<String, PostEntity>> createPost(CreatePostRequestDto request) async {
    List<Either<String, UploadMediaResponseDto>>? uploadMediaResults;
    if(request.pickedMedia != null && request.pickedMedia!.isNotEmpty) {
      uploadMediaResults = await Future.wait<Either<String, UploadMediaResponseDto>>(
        request.pickedMedia!.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final filePath = entry.value;
            return uploadMediaService.uploadMedia(
              UploadMediaRequestDto(
                filePath: filePath,
                ordinal: index,
              ),
            );
          },
        ),
      );
    }    
    if(uploadMediaResults != null) {
      final failedUploads = uploadMediaResults.where((result) => result.isLeft());
      if(failedUploads.isNotEmpty) {
        final errorMessages = failedUploads.map((result) => result.fold((l) => l, (r) => '')).join(', ');
        return Left('Failed to upload media files: $errorMessages');
      }

      final uploadedMediaIds = uploadMediaResults.map(
        (result) => result.getRight().toNullable()!,
      ).toList();

      request = request.copyWith(media: uploadedMediaIds, pickedMedia: null);

    }

    final result = await dataSource.createPost(request);
    
    return result.map((response) => response.data.toEntity());
  }
}
