import 'package:injectable/injectable.dart';
import 'package:kit/core/network/hive_client.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/profile/data_source/model/user_info_dto.dart';

abstract class ProfileLocalDataSource {
  Future<void> cacheUserInfo(UserInfoDto userInfo);
  Future<UserInfoDto?> getCachedUserInfo();
  Future<void> clearCachedUserInfo();
}

@Injectable(as: ProfileLocalDataSource)
class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final HiveClient hiveClient;
  static const String userInfoKey = 'cached_user_info';

  ProfileLocalDataSourceImpl(this.hiveClient);

  @override
  Future<void> cacheUserInfo(UserInfoDto userInfo) async {
    await hiveClient.put(AppConstants.hiveUserInfoBox, userInfoKey, userInfo.toJson());
  }

  @override
  Future<UserInfoDto?> getCachedUserInfo() async {
    final data = await hiveClient.get(AppConstants.hiveUserInfoBox, userInfoKey);
    if (data != null) {
      return UserInfoDto.fromJson(Map<String, dynamic>.from(data));
    }
    return null;
  }

  @override
  Future<void> clearCachedUserInfo() async {
    await hiveClient.delete(AppConstants.hiveUserInfoBox, userInfoKey);
  }
}