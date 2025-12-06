import 'package:fpdart/fpdart.dart';
import 'package:kit/features/create_post/data/models/create_post_request_dto.dart';
import 'package:kit/features/create_post/domain/entities/correct_content_entity.dart';
import 'package:kit/shared/model/post/post_entity.dart';

abstract class CreatePostRepository {
  Future<Either<String, PostEntity>> createPost(CreatePostRequestDto request);
  Future<Either<String, CorrectContentEntity>> correctContent(String content);
}
