import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/post_interaction/data_source/remote/post_interaction_remote_data_source.dart';
import 'package:kit/shared/model/post/post_entity.dart';

abstract class PostInteractionRepository {
  Future<Either<String, bool>> bookmarkPost({required String postId});
  Future<Either<String, bool>> likePost({required String postId});
  Future<Either<String, PostEntity>> getPostById({required String postId});
}

@Injectable(as: PostInteractionRepository)
class PostInteractionRepositoryImpl implements PostInteractionRepository {
  final PostInteractionRemoteDataSource remoteDataSource;

  PostInteractionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<String, bool>> bookmarkPost({required String postId}) async {
    return remoteDataSource.bookmarkPost(postId: postId);
  }

  @override
  Future<Either<String, bool>> likePost({required String postId}) async {
    return remoteDataSource.likePost(postId: postId);
  }

  @override
  Future<Either<String, PostEntity>> getPostById({required String postId}) async {
    final result = await remoteDataSource.getPostById(postId: postId);
    return result.fold(
      (error) => Left(error),
      (postDto) => Right(postDto.toEntity()),
    );
  }
}
