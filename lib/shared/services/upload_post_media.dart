import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_dto.dart';
import 'package:kit/shared/model/upload_media/upload_media_response_dto.dart';

abstract class UploadMediaPostService {
  Future<Either<String, UploadMediaResponseDto>> uploadMedia(UploadMediaRequestDto data);
}

@Injectable(as: UploadMediaPostService)
class UploadMediaPostServiceImpl implements UploadMediaPostService {
  final DioClient client;

  UploadMediaPostServiceImpl(this.client);

  @override
  Future<Either<String, UploadMediaResponseDto>> uploadMedia(UploadMediaRequestDto data) async {
    try {
      // Create form data with the actual file
      final formData = FormData.fromMap({
        'media': MultipartFile.fromFileSync(
          data.filePath,
          filename: data.filePath.split(Platform.pathSeparator).last,
        ),
        // if (data.ordinal != null) 'ordinal': data.ordinal,
      });

      final response = await client.post(
        AppConstants.uploadMediaPost,
        data: formData,
        queryParameters: {
          if (data.ordinal != null) 'ordinal': data.ordinal,
        }
      );

      return response.fold(
        (error) => Left('Failed to upload media: $error'),
        (res) {
          try {
            if (res.data == null || res.data['data'] == null) {
              return const Left('Invalid response structure');
            }
            final result = UploadMediaResponseDto.fromJson(res.data['data']);
            return Right(result);
          } catch (e) {
            return Left('Error parsing upload response: $e');
          }
        },
      );
    } catch (e) {
      return Left('Exception during media upload: $e');
    }
  }
}