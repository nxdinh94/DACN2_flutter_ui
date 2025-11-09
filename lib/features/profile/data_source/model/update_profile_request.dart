


import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_request.freezed.dart';
part 'update_profile_request.g.dart';

@freezed
abstract class UpdateProfileRequest with _$UpdateProfileRequest {
  factory UpdateProfileRequest({
    String? username,
    String? fullName,
    String? phoneNumber,
    String? bio,
    String? avatar,
    String? cover,
    String? country,
    DateTime? birthday,
    bool? isProtected,
    String? languageLevel,
    String? nativeLanguage,
    String? targetLanguage,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);
}