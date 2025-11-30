import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_media_response_entity.freezed.dart';
part 'upload_media_response_entity.g.dart';

@freezed
abstract class UploadMediaResponseEntity with _$UploadMediaResponseEntity {

   factory UploadMediaResponseEntity({
    required String id,
    required String url,
    required String type,
    required int ordinal,
    String? metadata,
   }) = _UploadMediaResponseEntity;

   factory UploadMediaResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$UploadMediaResponseEntityFromJson(json);
}

