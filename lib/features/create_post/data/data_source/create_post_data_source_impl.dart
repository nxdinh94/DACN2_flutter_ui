import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/extensions/extensions.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/create_post/data/data_source/create_post_data_source.dart';
import 'package:kit/features/create_post/data/models/create_post_request_dto.dart';
import 'package:kit/features/create_post/data/models/post_dto.dart';

@Injectable(as: CreatePostDataSource)
class CreatePostDataSourceImpl implements CreatePostDataSource {
  final DioClient dioClient;

  CreatePostDataSourceImpl(this.dioClient);

  @override
  Future<Either<String, CreatePostResponseDto>> createPost(CreatePostRequestDto request) async {
    final requestBody = request.toJson().removeNullValues;

    final result = await dioClient.post(
      AppConstants.createPostEndpoint,
      data: requestBody,
    );

    return result.fold(
      (exception) => Left(exception.toString()),
      (response) {
        try {          
          final responseData = response.data;
          
          if (responseData == null) {
            return const Left('Response data is null');
          }
          
          // If response.data is already the post object (not wrapped in 'data' key)
          final postData = responseData is Map<String, dynamic>
              ? (responseData.containsKey('data') ? responseData['data'] : responseData)
              : null;
          
          if (postData == null) {
            return Left('Invalid response structure: ${response.data}');
          }
          
          final responseDto = CreatePostResponseDto.fromJson({
            'data': postData,
          });
          
          return Right(responseDto);
        } catch (e, stackTrace) {
          debugPrint('Parse error: $e\n$stackTrace');
          return Left('Something went wrong');
        }
      },
    );
  }
}
