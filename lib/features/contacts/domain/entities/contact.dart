import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    required String id,
    required String name,
    required String email,
    String? phone,
    String? avatarUrl,
    @Default(false) bool isOnline,
    required DateTime lastSeen,
    String? status,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}
