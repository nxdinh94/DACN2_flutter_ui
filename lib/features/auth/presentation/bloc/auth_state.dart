part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  
  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.authenticated() = AuthAuthenticated;

  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  
  const factory AuthState.otpSent({required bool isLoading}) = AuthOtpSent;
  const factory AuthState.register({required bool isLoading}) = AuthRegister;
  const factory AuthState.login({required bool isLoading}) = AuthLogin;
  const factory AuthState.logout({required bool isLoading}) = AuthLogout;

  const factory AuthState.loginValidation({String? email, String? password}) = AuthLoginValidation;
  const factory AuthState.registerValidation({
    String? password,
    String? confirmPassword,
    String? name,
    String? code,
  }) = AuthRegisterValidation;
  const factory AuthState.sendOtpEmailValidation({String? email}) = AuthSendOtpEmailValidation;

  const factory AuthState.error({
    String? sentOptMessage, String? registerMessage, String? loginMessage, String? logoutMessage
  }) = AuthError;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
