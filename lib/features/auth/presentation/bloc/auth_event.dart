part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
  }) = LoginRequested;
  
  const factory AuthEvent.logoutRequested() = LogoutRequested;

  const factory AuthEvent.sendOtpRequested({
    required String email,  
  }) = SendOtpRequested;
  
  const factory AuthEvent.registerRequested({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
    String? phoneNumber,
    required String code,
  }) = RegisterRequested;
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
}
