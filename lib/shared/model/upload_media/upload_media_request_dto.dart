import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_entity.dart';

part 'upload_media_request_dto.freezed.dart';
part 'upload_media_request_dto.g.dart';

@freezed
abstract class UploadMediaRequestDto with _$UploadMediaRequestDto {
  
  const UploadMediaRequestDto._();
  factory UploadMediaRequestDto({
    required String filePath,
    int? ordinal,
  }) = _UploadMediaRequestDto;

   // fromJson
  factory UploadMediaRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UploadMediaRequestDtoFromJson(json);

  UploadMediaRequestEntity toEntity() {
    return UploadMediaRequestEntity(
      filePath: filePath,
      ordinal: ordinal,
    );
  }
}