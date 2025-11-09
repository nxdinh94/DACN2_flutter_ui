// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoEntity _$UserInfoEntityFromJson(Map<String, dynamic> json) =>
    _UserInfoEntity(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      status: json['status'] as String,
      roleId: (json['roleId'] as num).toInt(),
      isProtected: json['isProtected'] as bool,
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      pinnedPostId: json['pinnedPostId'] as String?,
      fullName: json['fullName'] as String,
      bio: json['bio'] as String?,
      avatar: json['avatar'] as String?,
      cover: json['cover'] as String?,
      country: json['country'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      languageLevel: json['languageLevel'] as String,
      nativeLanguage: json['nativeLanguage'] as String,
      targetLanguage: json['targetLanguage'] as String,
      currentStreak: (json['currentStreak'] as num).toInt(),
      totalStudyTime: (json['totalStudyTime'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      experiencePoints: (json['experiencePoints'] as num).toInt(),
      isVerified: json['isVerified'] as bool,
      lastActiveAt: DateTime.parse(json['lastActiveAt'] as String),
      createdById: json['createdById'] as String?,
      updatedById: json['updatedById'] as String?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserInfoEntityToJson(_UserInfoEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'status': instance.status,
      'roleId': instance.roleId,
      'isProtected': instance.isProtected,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'pinnedPostId': instance.pinnedPostId,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'cover': instance.cover,
      'country': instance.country,
      'birthday': instance.birthday?.toIso8601String(),
      'languageLevel': instance.languageLevel,
      'nativeLanguage': instance.nativeLanguage,
      'targetLanguage': instance.targetLanguage,
      'currentStreak': instance.currentStreak,
      'totalStudyTime': instance.totalStudyTime,
      'level': instance.level,
      'experiencePoints': instance.experiencePoints,
      'isVerified': instance.isVerified,
      'lastActiveAt': instance.lastActiveAt.toIso8601String(),
      'createdById': instance.createdById,
      'updatedById': instance.updatedById,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
