import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

@freezed
abstract class UserInfoDto with _$UserInfoDto {
  @HiveType(typeId: 0)
  const factory UserInfoDto({
    @HiveField(0) required String id,
    @HiveField(1) required String email,
    @HiveField(2) required String username,
    @HiveField(3) String? phoneNumber,
    @HiveField(4) required String status,
    @HiveField(5) required int roleId,
    @HiveField(6) required bool isProtected,
    @HiveField(7) DateTime? verifiedAt,
    @HiveField(8) String? pinnedPostId,
    @HiveField(9) required String fullName, 
    @HiveField(10) String? bio,
    @HiveField(11) String? avatar,
    @HiveField(12) String? cover,
    @HiveField(13) String? country,
    @HiveField(14) DateTime? birthday,
    @HiveField(15) required String languageLevel,
    @HiveField(16) required String nativeLanguage,
    @HiveField(17) required String targetLanguage,
    @HiveField(18) required int currentStreak,
    @HiveField(19) required int totalStudyTime,
    @HiveField(20) required int level,
    @HiveField(21) required int experiencePoints,
    @HiveField(22) required bool isVerified,
    @HiveField(23) required DateTime lastActiveAt,
    @HiveField(24) String? createdById,
    @HiveField(25) String? updatedById,
    @HiveField(26) DateTime? deletedAt,
    @HiveField(27) required DateTime createdAt,
    @HiveField(28) required DateTime updatedAt,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);
}
