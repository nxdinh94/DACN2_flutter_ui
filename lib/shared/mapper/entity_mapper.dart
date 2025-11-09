import 'package:kit/features/profile/data_source/repository/user_info_entity.dart';
import 'package:kit/features/profile/data_source/model/user_info_dto.dart';

abstract class EntityMapper <E, D>{
  E toEntity(D dto);
  D toDto(E entity);
}

class UserInfoMapper implements EntityMapper<UserInfoEntity, UserInfoDto> {
  @override
  UserInfoEntity toEntity(UserInfoDto dto) {
    return UserInfoEntity(
      id: dto.id,
      email: dto.email,
      username: dto.username,
      phoneNumber: dto.phoneNumber,
      status: dto.status,
      roleId: dto.roleId,
      isProtected: dto.isProtected,
      verifiedAt: dto.verifiedAt,
      pinnedPostId: dto.pinnedPostId,
      fullName: dto.fullName,
      bio: dto.bio,
      avatar: dto.avatar,
      cover: dto.cover,
      country: dto.country,
      birthday: dto.birthday,
      languageLevel: dto.languageLevel,
      nativeLanguage: dto.nativeLanguage,
      targetLanguage: dto.targetLanguage,
      currentStreak: dto.currentStreak,
      totalStudyTime: dto.totalStudyTime,
      level: dto.level,
      experiencePoints: dto.experiencePoints,
      isVerified: dto.isVerified,
      lastActiveAt: dto.lastActiveAt,
      createdById: dto.createdById,
      updatedById: dto.updatedById,
      deletedAt: dto.deletedAt,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
    );
  }

  @override
  UserInfoDto toDto(UserInfoEntity entity) {
    return UserInfoDto(
      id: entity.id,
      email: entity.email,
      username: entity.username,
      phoneNumber: entity.phoneNumber,
      status: entity.status,
      roleId: entity.roleId,
      isProtected: entity.isProtected,
      verifiedAt: entity.verifiedAt,
      pinnedPostId: entity.pinnedPostId,
      fullName: entity.fullName,
      bio: entity.bio,
      avatar: entity.avatar,
      cover: entity.cover,
      country: entity.country,
      birthday: entity.birthday,
      languageLevel: entity.languageLevel,
      nativeLanguage: entity.nativeLanguage,
      targetLanguage: entity.targetLanguage,
      currentStreak: entity.currentStreak,
      totalStudyTime: entity.totalStudyTime,
      level: entity.level,
      experiencePoints: entity.experiencePoints,
      isVerified: entity.isVerified,
      lastActiveAt: entity.lastActiveAt,
      createdById: entity.createdById,
      updatedById: entity.updatedById,
      deletedAt: entity.deletedAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}