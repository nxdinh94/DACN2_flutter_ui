// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_media_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadMediaResponseEntity _$UploadMediaResponseEntityFromJson(
  Map<String, dynamic> json,
) => _UploadMediaResponseEntity(
  id: json['id'] as String,
  url: json['url'] as String,
  type: json['type'] as String,
  ordinal: (json['ordinal'] as num).toInt(),
  metadata: json['metadata'] as String?,
);

Map<String, dynamic> _$UploadMediaResponseEntityToJson(
  _UploadMediaResponseEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'type': instance.type,
  'ordinal': instance.ordinal,
  'metadata': instance.metadata,
};
