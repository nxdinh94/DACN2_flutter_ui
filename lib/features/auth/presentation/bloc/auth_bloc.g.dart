// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoading _$AuthLoadingFromJson(Map<String, dynamic> json) =>
    AuthLoading($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AuthLoadingToJson(AuthLoading instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

AuthAuthenticated _$AuthAuthenticatedFromJson(Map<String, dynamic> json) =>
    AuthAuthenticated($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AuthAuthenticatedToJson(AuthAuthenticated instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

AuthUnauthenticated _$AuthUnauthenticatedFromJson(Map<String, dynamic> json) =>
    AuthUnauthenticated($type: json['runtimeType'] as String?);

Map<String, dynamic> _$AuthUnauthenticatedToJson(
  AuthUnauthenticated instance,
) => <String, dynamic>{'runtimeType': instance.$type};

AuthOtpSent _$AuthOtpSentFromJson(Map<String, dynamic> json) => AuthOtpSent(
  isLoading: json['isLoading'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AuthOtpSentToJson(AuthOtpSent instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'runtimeType': instance.$type,
    };

AuthRegister _$AuthRegisterFromJson(Map<String, dynamic> json) => AuthRegister(
  isLoading: json['isLoading'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AuthRegisterToJson(AuthRegister instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'runtimeType': instance.$type,
    };

AuthLogin _$AuthLoginFromJson(Map<String, dynamic> json) => AuthLogin(
  isLoading: json['isLoading'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AuthLoginToJson(AuthLogin instance) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'runtimeType': instance.$type,
};

AuthLogout _$AuthLogoutFromJson(Map<String, dynamic> json) => AuthLogout(
  isLoading: json['isLoading'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AuthLogoutToJson(AuthLogout instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'runtimeType': instance.$type,
    };

AuthError _$AuthErrorFromJson(Map<String, dynamic> json) => AuthError(
  sentOptMessage: json['sentOptMessage'] as String?,
  registerMessage: json['registerMessage'] as String?,
  loginMessage: json['loginMessage'] as String?,
  logoutMessage: json['logoutMessage'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AuthErrorToJson(AuthError instance) => <String, dynamic>{
  'sentOptMessage': instance.sentOptMessage,
  'registerMessage': instance.registerMessage,
  'loginMessage': instance.loginMessage,
  'logoutMessage': instance.logoutMessage,
  'runtimeType': instance.$type,
};
