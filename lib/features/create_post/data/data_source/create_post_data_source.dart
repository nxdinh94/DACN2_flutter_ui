import 'package:fpdart/fpdart.dart';
import 'package:kit/features/create_post/data/models/create_post_request_dto.dart';
import 'package:kit/shared/model/post/post_dto.dart';

abstract class CreatePostDataSource {
  Future<Either<String, CreatePostResponseDto>> createPost(CreatePostRequestDto request);
}
