// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokenEntity _$AuthTokenEntityFromJson(Map<String, dynamic> json) =>
    _AuthTokenEntity(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthTokenEntityToJson(_AuthTokenEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
