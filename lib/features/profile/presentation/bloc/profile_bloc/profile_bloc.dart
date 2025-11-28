import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/profile/data_source/model/update_profile_request.dart';
import 'package:kit/features/profile/data_source/repository/profile_repository.dart';
import 'package:kit/features/profile/data_source/repository/user_info_entity.dart';

part 'profile_events.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvents, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc({required this.profileRepository})
      : super(const ProfileState.initial()) {
    on<GetProfile>(_onGetUserProfile);
    on<UpdateProfile>(_onUpdateUserProfile);
  }

  Future<void> _onGetUserProfile(GetProfile event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final userInfo = await profileRepository.getUserInfo();
    userInfo.fold(
      (error) => emit(ProfileState.error(message: error)),
      (userInfo) => emit(ProfileState.loaded(userInfo: userInfo)),
    );
  }
  Future<void> _onUpdateUserProfile(UpdateProfile event, Emitter<ProfileState> emit) async {
    final currentState = state;
    
    // Get current user info from either ProfileLoaded or ProfileUpdated state
    final UserInfoEntity? currentUserInfo = switch (currentState) {
      ProfileLoaded(:final userInfo) => userInfo,
      _ => null,
    };

    if (currentUserInfo != null) {
      final newUserInfo = currentUserInfo.copyWith(
        username: event.updateProfileRequest.username ?? currentUserInfo.username,
        fullName: event.updateProfileRequest.fullName ?? currentUserInfo.fullName,
        phoneNumber: event.updateProfileRequest.phoneNumber ?? currentUserInfo.phoneNumber,
        bio: event.updateProfileRequest.bio ?? currentUserInfo.bio,
        avatar: event.updateProfileRequest.avatar ?? currentUserInfo.avatar,
        cover: event.updateProfileRequest.cover ?? currentUserInfo.cover,
        country: event.updateProfileRequest.country ?? currentUserInfo.country,
        birthday: event.updateProfileRequest.birthday ?? currentUserInfo.birthday,
        isProtected: event.updateProfileRequest.isProtected ?? currentUserInfo.isProtected,
        languageLevel: event.updateProfileRequest.languageLevel ?? currentUserInfo.languageLevel,
        nativeLanguage: event.updateProfileRequest.nativeLanguage ?? currentUserInfo.nativeLanguage,
        targetLanguage: event.updateProfileRequest.targetLanguage ?? currentUserInfo.targetLanguage,
      );
      emit(ProfileState.loaded(userInfo: newUserInfo));
      final updatedUserInfo = await profileRepository.updateProfile(data: event.updateProfileRequest);
      updatedUserInfo.fold(
        (error) => emit(ProfileState.error(message: error)),
        (userInfo) => emit(ProfileState.loaded(userInfo: userInfo)),
      );
    }
  }
}