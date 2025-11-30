// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_media_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadMediaResponseDto _$UploadMediaResponseDtoFromJson(
  Map<String, dynamic> json,
) => _UploadMediaResponseDto(
  id: json['id'] as String,
  url: json['url'] as String,
  type: json['type'] as String,
  ordinal: (json['ordinal'] as num).toInt(),
  metadata: json['metadata'] == null
      ? null
      : MediaMetadataDto.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UploadMediaResponseDtoToJson(
  _UploadMediaResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'type': instance.type,
  'ordinal': instance.ordinal,
  'metadata': instance.metadata,
};

_MediaMetadataDto _$MediaMetadataDtoFromJson(Map<String, dynamic> json) =>
    _MediaMetadataDto(
      mimetype: json['mimetype'] as String?,
      fileName: json['fileName'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt(),
      uploadedAt: json['uploadedAt'] as String?,
    );

Map<String, dynamic> _$MediaMetadataDtoToJson(_MediaMetadataDto instance) =>
    <String, dynamic>{
      'mimetype': instance.mimetype,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'uploadedAt': instance.uploadedAt,
    };
