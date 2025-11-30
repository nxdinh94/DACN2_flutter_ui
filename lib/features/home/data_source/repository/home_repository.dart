import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/home/data_source/remote/home_remote_data_source.dart';
import 'package:kit/shared/model/post/post_entity.dart';

abstract class HomeRepository {
  Future<Either<String, List<PostEntity>>> getForYouPosts({
    int page = 1,
    int limit = 10,
  });
  
  Future<Either<String, List<PostEntity>>> getFollowingPosts({
    int page = 1,
    int limit = 10,
  });
}

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<String, List<PostEntity>>> getForYouPosts({
    int page = 1,
    int limit = 10,
  }) async {
    final result = await remoteDataSource.getForYouPosts(
      page: page,
      limit: limit,
    );

    return result.fold(
      (error) => Left(error),
      (posts) => Right(posts.map((dto) => dto.toEntity()).toList()),
    );
  }

  @override
  Future<Either<String, List<PostEntity>>> getFollowingPosts({
    int page = 1,
    int limit = 10,
  }) async {
    final result = await remoteDataSource.getFollowingPosts(
      page: page,
      limit: limit,
    );

    return result.fold(
      (error) => Left(error),
      (posts) => Right(posts.map((dto) => dto.toEntity()).toList()),
    );
  }
}
