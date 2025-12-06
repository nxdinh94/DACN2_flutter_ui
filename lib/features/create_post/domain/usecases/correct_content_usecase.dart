

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/create_post/domain/entities/correct_content_entity.dart';
import 'package:kit/features/create_post/domain/repositories/create_post_repository.dart';

@injectable
class CorrectContentUsecase {
  final CreatePostRepository repo;
  CorrectContentUsecase(this.repo);
  Future<Either<String, CorrectContentEntity>> call (String content){
    return repo.correctContent(content);
  }
}