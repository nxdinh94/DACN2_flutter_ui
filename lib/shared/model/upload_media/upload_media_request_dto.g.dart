// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_media_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadMediaRequestDto _$UploadMediaRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UploadMediaRequestDto(
  filePath: json['filePath'] as String,
  ordinal: (json['ordinal'] as num?)?.toInt(),
);

Map<String, dynamic> _$UploadMediaRequestDtoToJson(
  _UploadMediaRequestDto instance,
) => <String, dynamic>{
  'filePath': instance.filePath,
  'ordinal': instance.ordinal,
};
