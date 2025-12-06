import 'package:freezed_annotation/freezed_annotation.dart';

part 'correct_content_entity.freezed.dart';

@freezed
abstract class CorrectContentEntity with _$CorrectContentEntity {
   factory CorrectContentEntity({
    required String original,
    required String corrected,
    required String diff,
   }) = _CorrectContentEntity;
}