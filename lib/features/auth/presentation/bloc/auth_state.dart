part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  
  const factory AuthState.loading() = AuthLoading;
  
  const factory AuthState.authenticated(User user) = AuthAuthenticated;
  
  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  const factory AuthState.otpSent({required bool isLoading}) = AuthOtpSent;
  
  const factory AuthState.error(String message) = AuthError;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
