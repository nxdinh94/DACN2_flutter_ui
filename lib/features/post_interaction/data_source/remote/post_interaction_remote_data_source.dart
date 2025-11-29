import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';

abstract class PostInteractionRemoteDataSource {
  Future<Either<String, bool>> bookmarkPost({required String postId});
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
}
