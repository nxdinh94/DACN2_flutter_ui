import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/create_post/data/data_source/create_post_data_source.dart';
import 'package:kit/features/create_post/data/models/create_post_request_dto.dart';
import 'package:kit/features/create_post/domain/entities/create_post_request.dart';
import 'package:kit/features/create_post/domain/repositories/create_post_repository.dart';
import 'package:kit/shared/model/post/post_entity.dart';

@Injectable(as: CreatePostRepository)
class CreatePostRepositoryImpl implements CreatePostRepository {
  final CreatePostDataSource dataSource;

  CreatePostRepositoryImpl(this.dataSource);

  @override
  Future<Either<String, PostEntity>> createPost(CreatePostRequest request) async {
    final requestDto = CreatePostRequestDto(
      content: request.content,
      visibility: request.visibility,
      language: request.language,
      difficulty: request.difficulty,
      topics: request.topics,
      inReplyToPostId: request.inReplyToPostId,
      inReplyToUserId: request.inReplyToUserId,
      repostOfId: request.repostOfId,
      quoteOfId: request.quoteOfId,
    );

    final result = await dataSource.createPost(requestDto);
    
    return result.map((response) => response.data.toEntity());
  }
}
