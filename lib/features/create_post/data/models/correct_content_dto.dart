import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kit/features/create_post/domain/entities/correct_content_entity.dart';

part 'correct_content_dto.freezed.dart';
part 'correct_content_dto.g.dart';

@freezed
abstract class CorrectContentDto with _$CorrectContentDto {
  const CorrectContentDto._();
  factory CorrectContentDto({
    required String original,
    required String corrected,
    required String diff,
    required int status,
    @JsonKey(name: 'user_id') required String userId,
  }) = _CorrectContentDto;

  factory CorrectContentDto.fromJson(Map<String, Object?> json) => _$CorrectContentDtoFromJson(json);
  CorrectContentEntity toEntity(){
    return CorrectContentEntity(
      original: original, 
      corrected: corrected, 
      diff: diff
    );
  }
}