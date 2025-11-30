// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePostRequestDto {

 String get content; String get visibility; String get language; String get difficulty; List<String> get topics; List<UploadMediaResponseDto>? get media;// After transform from pickedMedia to send to server
 List<String>? get pickedMedia; String? get inReplyToPostId; String? get inReplyToUserId; String? get repostOfId; String? get quoteOfId;
/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestDtoCopyWith<CreatePostRequestDto> get copyWith => _$CreatePostRequestDtoCopyWithImpl<CreatePostRequestDto>(this as CreatePostRequestDto, _$identity);

  /// Serializes this CreatePostRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequestDto&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other.topics, topics)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.pickedMedia, pickedMedia)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,visibility,language,difficulty,const DeepCollectionEquality().hash(topics),const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(pickedMedia),inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId);

@override
String toString() {
  return 'CreatePostRequestDto(content: $content, visibility: $visibility, language: $language, difficulty: $difficulty, topics: $topics, media: $media, pickedMedia: $pickedMedia, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestDtoCopyWith<$Res>  {
  factory $CreatePostRequestDtoCopyWith(CreatePostRequestDto value, $Res Function(CreatePostRequestDto) _then) = _$CreatePostRequestDtoCopyWithImpl;
@useResult
$Res call({
 String content, String visibility, String language, String difficulty, List<String> topics, List<UploadMediaResponseDto>? media, List<String>? pickedMedia, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId
});




}
/// @nodoc
class _$CreatePostRequestDtoCopyWithImpl<$Res>
    implements $CreatePostRequestDtoCopyWith<$Res> {
  _$CreatePostRequestDtoCopyWithImpl(this._self, this._then);

  final CreatePostRequestDto _self;
  final $Res Function(CreatePostRequestDto) _then;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? visibility = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? media = freezed,Object? pickedMedia = freezed,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<UploadMediaResponseDto>?,pickedMedia: freezed == pickedMedia ? _self.pickedMedia : pickedMedia // ignore: cast_nullable_to_non_nullable
as List<String>?,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequestDto].
extension CreatePostRequestDtoPatterns on CreatePostRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  List<UploadMediaResponseDto>? media,  List<String>? pickedMedia,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.media,_that.pickedMedia,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  List<UploadMediaResponseDto>? media,  List<String>? pickedMedia,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestDto():
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.media,_that.pickedMedia,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  List<UploadMediaResponseDto>? media,  List<String>? pickedMedia,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.media,_that.pickedMedia,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostRequestDto implements CreatePostRequestDto {
  const _CreatePostRequestDto({required this.content, required this.visibility, required this.language, required this.difficulty, required final  List<String> topics, final  List<UploadMediaResponseDto>? media, final  List<String>? pickedMedia, this.inReplyToPostId, this.inReplyToUserId, this.repostOfId, this.quoteOfId}): _topics = topics,_media = media,_pickedMedia = pickedMedia;
  factory _CreatePostRequestDto.fromJson(Map<String, dynamic> json) => _$CreatePostRequestDtoFromJson(json);

@override final  String content;
@override final  String visibility;
@override final  String language;
@override final  String difficulty;
 final  List<String> _topics;
@override List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

 final  List<UploadMediaResponseDto>? _media;
@override List<UploadMediaResponseDto>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// After transform from pickedMedia to send to server
 final  List<String>? _pickedMedia;
// After transform from pickedMedia to send to server
@override List<String>? get pickedMedia {
  final value = _pickedMedia;
  if (value == null) return null;
  if (_pickedMedia is EqualUnmodifiableListView) return _pickedMedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? inReplyToPostId;
@override final  String? inReplyToUserId;
@override final  String? repostOfId;
@override final  String? quoteOfId;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestDtoCopyWith<_CreatePostRequestDto> get copyWith => __$CreatePostRequestDtoCopyWithImpl<_CreatePostRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequestDto&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._topics, _topics)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._pickedMedia, _pickedMedia)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,visibility,language,difficulty,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_pickedMedia),inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId);

@override
String toString() {
  return 'CreatePostRequestDto(content: $content, visibility: $visibility, language: $language, difficulty: $difficulty, topics: $topics, media: $media, pickedMedia: $pickedMedia, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestDtoCopyWith<$Res> implements $CreatePostRequestDtoCopyWith<$Res> {
  factory _$CreatePostRequestDtoCopyWith(_CreatePostRequestDto value, $Res Function(_CreatePostRequestDto) _then) = __$CreatePostRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String content, String visibility, String language, String difficulty, List<String> topics, List<UploadMediaResponseDto>? media, List<String>? pickedMedia, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId
});




}
/// @nodoc
class __$CreatePostRequestDtoCopyWithImpl<$Res>
    implements _$CreatePostRequestDtoCopyWith<$Res> {
  __$CreatePostRequestDtoCopyWithImpl(this._self, this._then);

  final _CreatePostRequestDto _self;
  final $Res Function(_CreatePostRequestDto) _then;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? visibility = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? media = freezed,Object? pickedMedia = freezed,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,}) {
  return _then(_CreatePostRequestDto(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<UploadMediaResponseDto>?,pickedMedia: freezed == pickedMedia ? _self._pickedMedia : pickedMedia // ignore: cast_nullable_to_non_nullable
as List<String>?,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
