import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/shared/model/post/post_dto.dart';

abstract class HomeRemoteDataSource {
  Future<Either<String, List<PostDto>>> getForYouPosts({
    int page = 1,
    int limit = 10,
  });
  
  Future<Either<String, List<PostDto>>> getFollowingPosts({
    int page = 1,
    int limit = 10,
  });
}

@Injectable(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient dioClient;

  HomeRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<String, List<PostDto>>> getForYouPosts({
    int page = 1,
    int limit = 10,
  }) async {
    final result = await dioClient.get(
      AppConstants.getForYouPostsEndpoint,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );

    return result.fold(
      (error) => Left('Failed to fetch posts: ${error.toString()}'),
      (response) {
        final List<dynamic> data = response.data['data'] ?? [];
        final posts = data.map((json) => PostDto.fromJson(json)).toList();
        return Right(posts);
      },
    );
  }

  @override
  Future<Either<String, List<PostDto>>> getFollowingPosts({
    int page = 1,
    int limit = 10,
  }) async {
    final result = await dioClient.get(
      AppConstants.getFollowingPostsEndpoint,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );

    return result.fold(
      (error) => Left('Failed to fetch following posts: ${error.toString()}'),
      (response) {
        final List<dynamic> data = response.data['data'] ?? [];
        final posts = data.map((json) => PostDto.fromJson(json)).toList();
        return Right(posts);
      },
    );
  }
}
