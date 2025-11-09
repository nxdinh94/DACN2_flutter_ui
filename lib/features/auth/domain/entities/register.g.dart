// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Register _$RegisterFromJson(Map<String, dynamic> json) => _Register(
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  password: json['password'] as String,
  confirmPassword: json['confirmPassword'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$RegisterToJson(_Register instance) => <String, dynamic>{
  'email': instance.email,
  'fullName': instance.fullName,
  'password': instance.password,
  'confirmPassword': instance.confirmPassword,
  'code': instance.code,
};
