import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_entity.freezed.dart';
part 'user_info_entity.g.dart';

@freezed
abstract class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    required String id,
    required String email,
    required String username,
    String? phoneNumber,
    required String status,
    required int roleId,
    required bool isProtected,
    DateTime? verifiedAt,
    String? pinnedPostId,
    required String fullName,
    String? bio,
    String? avatar,
    String? cover,
    String? country,
    DateTime? birthday,
    required String languageLevel,
    required String nativeLanguage,
    required String targetLanguage,
    required int currentStreak,
    required int totalStudyTime,
    required int level,
    required int experiencePoints,
    required bool isVerified,
    required DateTime lastActiveAt,
    String? createdById,
    String? updatedById,
    DateTime? deletedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserInfoEntity;

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$UserInfoEntityFromJson(json);
}
