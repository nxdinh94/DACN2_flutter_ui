import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/shared/model/upload_media/upload_media_request_dto.dart';

part 'upload_media_request_entity.freezed.dart';
part 'upload_media_request_entity.g.dart';

@freezed
abstract class UploadMediaRequestEntity with _$UploadMediaRequestEntity {
  const UploadMediaRequestEntity._();
  
  factory UploadMediaRequestEntity({
    required String filePath,
    int? ordinal,
  }) = _UploadMediaRequestEntity;

   // fromJson
  factory UploadMediaRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$UploadMediaRequestEntityFromJson(json);
  UploadMediaRequestDto toDto() {
    return UploadMediaRequestDto(
      filePath: filePath,
      ordinal: ordinal,
    );
  }
}

