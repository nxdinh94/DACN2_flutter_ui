import 'package:fpdart/fpdart.dart';
import 'package:kit/features/create_post/domain/entities/create_post_request.dart';
import 'package:kit/shared/model/post/post_entity.dart';

abstract class CreatePostRepository {
  Future<Either<String, PostEntity>> createPost(CreatePostRequest request);
}
