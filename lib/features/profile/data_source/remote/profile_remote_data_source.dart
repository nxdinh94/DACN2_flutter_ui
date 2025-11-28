
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/network/dio_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/profile/data_source/model/update_profile_request.dart';
import 'package:kit/features/profile/data_source/model/user_info_dto.dart';
import 'package:kit/shared/model/post/post_dto.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<String, UserInfoDto>> updateProfile({
    required UpdateProfileRequest data
  });
  Future<Either<String, UserInfoDto>> getUserInfo();
  Future<Either<String, List<PostDto>>> getSelfPosts();
}

@Injectable(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {

  final DioClient _client;
  ProfileRemoteDataSourceImpl(this._client);

  @override
  Future<Either<String, UserInfoDto>> getUserInfo() async {
    final result = await _client.get(AppConstants.userProfileEndpoint);
    return result.fold(
      (error) => Left('Failed to fetch user info: $error'),
      (res) => Right(UserInfoDto.fromJson(res.data['data'])),
    );
  }

  @override
  Future<Either<String, UserInfoDto>> updateProfile({required UpdateProfileRequest data}) async {
    // Convert to JSON and remove null values
    final jsonData = data.toJson();
    jsonData.removeWhere((key, value) => value == null);
    
    final result = await _client.patch(AppConstants.userProfileEndpoint, data: jsonData);
    return result.fold(
      (error) => Left('Failed to update user info: $error'),
      (res) => Right(UserInfoDto.fromJson(res.data['data'])),
    );
  }
  
  @override
  Future<Either<String, List<PostDto>>> getSelfPosts() async{

    // Implementation for fetching self posts from remote API
    final result = await _client.get(AppConstants.getFollowingPostsEndpoint);
    return result.fold(
      (error) => Left('Failed to fetch self posts: $error'),
      (res) => Right((res.data['data'] as List).map((item) => PostDto.fromJson(item)).toList()),
    );
  }
}