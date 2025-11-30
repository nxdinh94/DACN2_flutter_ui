
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_dto.dart';

abstract class UploadMediaService {
  Future<Either<String, String>> uploadImage(UploadMediaRequestDto filePath);
  Future<Either<String, String>> uploadVideo(String filePath);
}
@Injectable(as: UploadMediaService)
class UploadMediaServiceImpl implements UploadMediaService {

  final DioClient client;
  UploadMediaServiceImpl(this.client);

  @override
  Future<Either<String, String>> uploadImage(UploadMediaRequestDto data) async {
    try {
      // Create form data with the actual file
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          data.filePath,
          filename: data.filePath.split(Platform.pathSeparator).last,
        ),
      });

      final result = await client.post(
        AppConstants.uploadImage,
        data: formData,
      );

      return result.fold(
        (error) => Left('Failed to upload image: $error'),
        (res) {
          return Right(res.data['data']['url']);
        },
      );
    } catch (e) {
      return Left('Error uploading image: $e');
    }
  }

  @override
  Future<Either<String, String>> uploadVideo(String filePath) async {
    try {
      // Validate file exists
      final file = File(filePath);
      if (!await file.exists()) {
        return const Left('File does not exist');
      }

      // Validate file type
      final extension = filePath.toLowerCase();
      final validExtensions = ['.mp4', '.mov', '.mkv', '.avi'];
      if (!validExtensions.any((ext) => extension.endsWith(ext))) {
        return const Left('Invalid file type. Supported formats: MP4, MOV, MKV, AVI');
      }

      // Create form data with the actual file
      final formData = FormData.fromMap({
        'video': await MultipartFile.fromFile(
          filePath,
          filename: filePath.split(Platform.pathSeparator).last,
        ),
      });

      final result = await client.post(
        AppConstants.uploadVideo,
        data: formData,
      );

      return result.fold(
        (error) => Left('Failed to upload video: $error'),
        (res) => Right(res.data['data']['url']),
      );
    } catch (e) {
      return Left('Error uploading video: $e');
    }
  }
}