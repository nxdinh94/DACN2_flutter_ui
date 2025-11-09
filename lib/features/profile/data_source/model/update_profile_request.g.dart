// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileRequest _$UpdateProfileRequestFromJson(
  Map<String, dynamic> json,
) => _UpdateProfileRequest(
  username: json['username'] as String?,
  fullName: json['fullName'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  bio: json['bio'] as String?,
  avatar: json['avatar'] as String?,
  cover: json['cover'] as String?,
  country: json['country'] as String?,
  birthday: json['birthday'] == null
      ? null
      : DateTime.parse(json['birthday'] as String),
  isProtected: json['isProtected'] as bool?,
  languageLevel: json['languageLevel'] as String?,
  nativeLanguage: json['nativeLanguage'] as String?,
  targetLanguage: json['targetLanguage'] as String?,
);

Map<String, dynamic> _$UpdateProfileRequestToJson(
  _UpdateProfileRequest instance,
) => <String, dynamic>{
  'username': instance.username,
  'fullName': instance.fullName,
  'phoneNumber': instance.phoneNumber,
  'bio': instance.bio,
  'avatar': instance.avatar,
  'cover': instance.cover,
  'country': instance.country,
  'birthday': instance.birthday?.toIso8601String(),
  'isProtected': instance.isProtected,
  'languageLevel': instance.languageLevel,
  'nativeLanguage': instance.nativeLanguage,
  'targetLanguage': instance.targetLanguage,
};
