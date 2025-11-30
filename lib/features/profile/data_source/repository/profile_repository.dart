
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/profile/data_source/local/profile_local_data_source.dart';
import 'package:kit/features/profile/data_source/model/update_profile_request.dart';
import 'package:kit/features/profile/data_source/remote/profile_remote_data_source.dart';
import 'package:kit/features/profile/data_source/repository/user_info_entity.dart';
import 'package:kit/shared/mapper/entity_mapper.dart';
import 'package:kit/shared/model/post/post_entity.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_dto.dart';
import 'package:kit/shared/services/upload_media.dart';

abstract class ProfileRepository {
  Future<Either<String, UserInfoEntity>> updateProfile({
    required UpdateProfileRequest data
  });
  Future<Either<String, UserInfoEntity>> getUserInfo();
  Future<Either<String, List<PostEntity>>> getSelfPosts();
  Future<Either<String, List<PostEntity>>> getBookMarkedPosts();
}
@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {

  final ProfileRemoteDataSource remoteDataSource;
  final UploadMediaService uploadMediaService;
  final ProfileLocalDataSource localDataSource;
  ProfileRepositoryImpl(
    this.remoteDataSource, 
    this.uploadMediaService,
    this.localDataSource
  );

  @override
  Future<Either<String, UserInfoEntity>> getUserInfo() async {

    // get data from cache first
    final cachedData = await localDataSource.getCachedUserInfo();
    if(cachedData != null) {
      return Right(UserInfoMapper().toEntity(cachedData));
    }

    final result = await remoteDataSource.getUserInfo();

    return result.fold(
      (error) => Left('Failed to fetch user info: $error'),
      (res) {
        // cache the data
        localDataSource.cacheUserInfo(res);
        return Right(UserInfoMapper().toEntity(res));
      },
    );
  }

  @override
  Future<Either<String, UserInfoEntity>> updateProfile({required UpdateProfileRequest data}) async {
    // Upload avatar if provided (local file path)
    if(data.avatar != null) {
      final avatarResult = await uploadMediaService.uploadImage(
        UploadMediaRequestDto(filePath: data.avatar!)
      );
      final uploadError = avatarResult.fold(
        (error) => error,
        (url) {
          data = data.copyWith(avatar: url);
          return null;
        },
      );
      if(uploadError != null) {
        return Left('Failed to upload avatar image: $uploadError');
      }
    }
    
    // Upload cover if provided (local file path)
    if(data.cover != null) {
      final coverResult = await uploadMediaService.uploadImage(
        UploadMediaRequestDto(filePath: data.cover!)
      );
      final uploadError = coverResult.fold(
        (error) => error,
        (url) {
          data = data.copyWith(cover: url);
          return null;
        },
      );
      if(uploadError != null) {
        return Left('Failed to upload cover image: $uploadError');
      }
    }

    final result = await remoteDataSource.updateProfile(data: data);
    return result.fold(
      (error) => Left('Failed to update user info: $error'),
      (res) {
        // update cache
        localDataSource.cacheUserInfo(res);
        return Right(UserInfoMapper().toEntity(res));
      },
    );
  }
  
  @override
  Future<Either<String, List<PostEntity>>> getSelfPosts()async {
    // Implementation for fetching self posts from repository
    return remoteDataSource.getSelfPosts().then((result) => 
      result.fold(
        (error) => Left('Failed to fetch self posts: $error'),
        (res) => Right(res.map((dto) => dto.toEntity()).toList()),
      )
    );
  }

  @override
  Future<Either<String, List<PostEntity>>> getBookMarkedPosts() async {
    final result = await remoteDataSource.getBookmarkedPosts();
    return result.fold(
      (error) => Left(error),
      (posts) => Right(posts.map((dto) => dto.toEntity()).toList()),
    );
  }
}



