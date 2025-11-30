import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_media_response_dto.freezed.dart';
part 'upload_media_response_dto.g.dart';

@freezed
abstract class UploadMediaResponseDto with _$UploadMediaResponseDto {

   factory UploadMediaResponseDto({
    required String id,
    required String url,
    required String type,
    required int ordinal,
    MediaMetadataDto? metadata,
   }) = _UploadMediaResponseDto;

   factory UploadMediaResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UploadMediaResponseDtoFromJson(json);
}

@freezed
abstract class MediaMetadataDto with _$MediaMetadataDto {
  factory MediaMetadataDto({
    String? mimetype,
    String? fileName,
    int? fileSize,
    String? uploadedAt,
  }) = _MediaMetadataDto;

  factory MediaMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataDtoFromJson(json);
}

