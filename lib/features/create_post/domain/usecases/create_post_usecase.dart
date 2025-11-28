import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/create_post/domain/entities/create_post_request.dart';
import 'package:kit/features/create_post/domain/entities/post_entity.dart';
import 'package:kit/features/create_post/domain/repositories/create_post_repository.dart';

@injectable
class CreatePostUseCase {
  final CreatePostRepository repository;

  CreatePostUseCase(this.repository);

  Future<Either<String, PostEntity>> execute(CreatePostRequest request) {
    return repository.createPost(request);
  }
}
