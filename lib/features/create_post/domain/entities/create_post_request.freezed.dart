// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePostRequest {

 String get content; String get visibility; String get language; String get difficulty; List<String> get topics; String? get inReplyToPostId; String? get inReplyToUserId; String? get repostOfId; String? get quoteOfId;
/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestCopyWith<CreatePostRequest> get copyWith => _$CreatePostRequestCopyWithImpl<CreatePostRequest>(this as CreatePostRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId));
}


@override
int get hashCode => Object.hash(runtimeType,content,visibility,language,difficulty,const DeepCollectionEquality().hash(topics),inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId);

@override
String toString() {
  return 'CreatePostRequest(content: $content, visibility: $visibility, language: $language, difficulty: $difficulty, topics: $topics, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestCopyWith<$Res>  {
  factory $CreatePostRequestCopyWith(CreatePostRequest value, $Res Function(CreatePostRequest) _then) = _$CreatePostRequestCopyWithImpl;
@useResult
$Res call({
 String content, String visibility, String language, String difficulty, List<String> topics, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId
});




}
/// @nodoc
class _$CreatePostRequestCopyWithImpl<$Res>
    implements $CreatePostRequestCopyWith<$Res> {
  _$CreatePostRequestCopyWithImpl(this._self, this._then);

  final CreatePostRequest _self;
  final $Res Function(CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? visibility = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequest].
extension CreatePostRequestPatterns on CreatePostRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest():
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String content,  String visibility,  String language,  String difficulty,  List<String> topics,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequest() when $default != null:
return $default(_that.content,_that.visibility,_that.language,_that.difficulty,_that.topics,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId);case _:
  return null;

}
}

}

/// @nodoc


class _CreatePostRequest implements CreatePostRequest {
  const _CreatePostRequest({required this.content, required this.visibility, required this.language, required this.difficulty, required final  List<String> topics, this.inReplyToPostId, this.inReplyToUserId, this.repostOfId, this.quoteOfId}): _topics = topics;
  

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

@override final  String? inReplyToPostId;
@override final  String? inReplyToUserId;
@override final  String? repostOfId;
@override final  String? quoteOfId;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestCopyWith<_CreatePostRequest> get copyWith => __$CreatePostRequestCopyWithImpl<_CreatePostRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequest&&(identical(other.content, content) || other.content == content)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId));
}


@override
int get hashCode => Object.hash(runtimeType,content,visibility,language,difficulty,const DeepCollectionEquality().hash(_topics),inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId);

@override
String toString() {
  return 'CreatePostRequest(content: $content, visibility: $visibility, language: $language, difficulty: $difficulty, topics: $topics, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestCopyWith<$Res> implements $CreatePostRequestCopyWith<$Res> {
  factory _$CreatePostRequestCopyWith(_CreatePostRequest value, $Res Function(_CreatePostRequest) _then) = __$CreatePostRequestCopyWithImpl;
@override @useResult
$Res call({
 String content, String visibility, String language, String difficulty, List<String> topics, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId
});




}
/// @nodoc
class __$CreatePostRequestCopyWithImpl<$Res>
    implements _$CreatePostRequestCopyWith<$Res> {
  __$CreatePostRequestCopyWithImpl(this._self, this._then);

  final _CreatePostRequest _self;
  final $Res Function(_CreatePostRequest) _then;

/// Create a copy of CreatePostRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? visibility = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,}) {
  return _then(_CreatePostRequest(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
