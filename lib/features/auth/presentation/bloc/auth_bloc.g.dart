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
    AuthAuthenticated(
      User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AuthAuthenticatedToJson(AuthAuthenticated instance) =>
    <String, dynamic>{'user': instance.user, 'runtimeType': instance.$type};

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

AuthError _$AuthErrorFromJson(Map<String, dynamic> json) =>
    AuthError(json['message'] as String, $type: json['runtimeType'] as String?);

Map<String, dynamic> _$AuthErrorToJson(AuthError instance) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};
