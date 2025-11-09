
part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvents with _$ProfileEvents {
  const factory ProfileEvents.getProfile() = GetProfile;
  const factory ProfileEvents.updateProfile({
    required UpdateProfileRequest updateProfileRequest,
  }) = UpdateProfile;
}
