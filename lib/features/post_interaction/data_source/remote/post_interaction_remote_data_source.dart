import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/shared/model/post/post_dto.dart';

abstract class PostInteractionRemoteDataSource {
  Future<Either<String, bool>> bookmarkPost({required String postId});
  Future<Either<String, bool>> likePost({required String postId});
  Future<Either<String, PostDto>> getPostById({required String postId});
}

@Injectable(as: PostInteractionRemoteDataSource)
class PostInteractionRemoteDataSourceImpl implements PostInteractionRemoteDataSource {
  final DioClient dioClient;

  PostInteractionRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<String, bool>> bookmarkPost({required String postId}) async {
    final endpoint = AppConstants.bookMarkAnPostEndpoint.replaceFirst(':id', postId);
    final result = await dioClient.post(endpoint);

    return result.fold(
      (error) => Left('Failed to bookmark post: ${error.toString()}'),
      (response) => const Right(true),
    );
  }

  @override
  Future<Either<String, bool>> likePost({required String postId}) async {
    final endpoint = AppConstants.likeAnPostEndpoint.replaceFirst(':id', postId);
    final result = await dioClient.post(endpoint);

    return result.fold(
      (error) => Left('Failed to like post: ${error.toString()}'),
      (response) => const Right(true),
    );
  }

  @override
  Future<Either<String, PostDto>> getPostById({required String postId}) async {
    final endpoint = AppConstants.getAnPostEndpoint.replaceFirst(':id', postId);
    final result = await dioClient.get(endpoint);

    return result.fold(
      (error) => Left('Failed to get post: ${error.toString()}'),
      (response) {
        final data = response.data['data'];
        if (data == null) {
          return const Left('Post not found');
        }
        final post = PostDto.fromJson(data);
        return Right(post);
      },
    );
  }
}
