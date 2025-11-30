// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_media_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadMediaRequestEntity _$UploadMediaRequestEntityFromJson(
  Map<String, dynamic> json,
) => _UploadMediaRequestEntity(
  filePath: json['filePath'] as String,
  ordinal: (json['ordinal'] as num?)?.toInt(),
);

Map<String, dynamic> _$UploadMediaRequestEntityToJson(
  _UploadMediaRequestEntity instance,
) => <String, dynamic>{
  'filePath': instance.filePath,
  'ordinal': instance.ordinal,
};
