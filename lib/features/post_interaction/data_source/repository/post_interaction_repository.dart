import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/post_interaction/data_source/remote/post_interaction_remote_data_source.dart';

abstract class PostInteractionRepository {
  Future<Either<String, bool>> bookmarkPost({required String postId});
}

@Injectable(as: PostInteractionRepository)
class PostInteractionRepositoryImpl implements PostInteractionRepository {
  final PostInteractionRemoteDataSource remoteDataSource;

  PostInteractionRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<String, bool>> bookmarkPost({required String postId}) async {
    return remoteDataSource.bookmarkPost(postId: postId);
  }
}
