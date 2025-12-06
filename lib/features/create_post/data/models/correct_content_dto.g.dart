// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correct_content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CorrectContentDto _$CorrectContentDtoFromJson(Map<String, dynamic> json) =>
    _CorrectContentDto(
      original: json['original'] as String,
      corrected: json['corrected'] as String,
      diff: json['diff'] as String,
      status: (json['status'] as num).toInt(),
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$CorrectContentDtoToJson(_CorrectContentDto instance) =>
    <String, dynamic>{
      'original': instance.original,
      'corrected': instance.corrected,
      'diff': instance.diff,
      'status': instance.status,
      'user_id': instance.userId,
    };
