// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Register _$RegisterFromJson(Map<String, dynamic> json) => _Register(
  email: json['email'] as String,
  name: json['name'] as String,
  password: json['password'] as String,
  confirmPassword: json['confirmPassword'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  code: json['code'] as String,
);

Map<String, dynamic> _$RegisterToJson(_Register instance) => <String, dynamic>{
  'email': instance.email,
  'name': instance.name,
  'password': instance.password,
  'confirmPassword': instance.confirmPassword,
  'phoneNumber': instance.phoneNumber,
  'code': instance.code,
};
