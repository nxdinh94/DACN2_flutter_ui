// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  isOnline: json['isOnline'] as bool? ?? false,
  lastSeen: DateTime.parse(json['lastSeen'] as String),
  status: json['status'] as String?,
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'avatarUrl': instance.avatarUrl,
  'isOnline': instance.isOnline,
  'lastSeen': instance.lastSeen.toIso8601String(),
  'status': instance.status,
};
