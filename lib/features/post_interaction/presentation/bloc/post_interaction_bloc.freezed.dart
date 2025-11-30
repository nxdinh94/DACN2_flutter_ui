// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_interaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostInteractionEvent {

 String get postId;
/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostInteractionEventCopyWith<PostInteractionEvent> get copyWith => _$PostInteractionEventCopyWithImpl<PostInteractionEvent>(this as PostInteractionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInteractionEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionEvent(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $PostInteractionEventCopyWith<$Res>  {
  factory $PostInteractionEventCopyWith(PostInteractionEvent value, $Res Function(PostInteractionEvent) _then) = _$PostInteractionEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$PostInteractionEventCopyWithImpl<$Res>
    implements $PostInteractionEventCopyWith<$Res> {
  _$PostInteractionEventCopyWithImpl(this._self, this._then);

  final PostInteractionEvent _self;
  final $Res Function(PostInteractionEvent) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostInteractionEvent].
extension PostInteractionEventPatterns on PostInteractionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BookmarkPost value)?  bookmarkPost,TResult Function( LikePost value)?  likePost,TResult Function( CommentPost value)?  commentPost,TResult Function( RepostPost value)?  repostPost,TResult Function( SharePost value)?  sharePost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BookmarkPost() when bookmarkPost != null:
return bookmarkPost(_that);case LikePost() when likePost != null:
return likePost(_that);case CommentPost() when commentPost != null:
return commentPost(_that);case RepostPost() when repostPost != null:
return repostPost(_that);case SharePost() when sharePost != null:
return sharePost(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BookmarkPost value)  bookmarkPost,required TResult Function( LikePost value)  likePost,required TResult Function( CommentPost value)  commentPost,required TResult Function( RepostPost value)  repostPost,required TResult Function( SharePost value)  sharePost,}){
final _that = this;
switch (_that) {
case BookmarkPost():
return bookmarkPost(_that);case LikePost():
return likePost(_that);case CommentPost():
return commentPost(_that);case RepostPost():
return repostPost(_that);case SharePost():
return sharePost(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BookmarkPost value)?  bookmarkPost,TResult? Function( LikePost value)?  likePost,TResult? Function( CommentPost value)?  commentPost,TResult? Function( RepostPost value)?  repostPost,TResult? Function( SharePost value)?  sharePost,}){
final _that = this;
switch (_that) {
case BookmarkPost() when bookmarkPost != null:
return bookmarkPost(_that);case LikePost() when likePost != null:
return likePost(_that);case CommentPost() when commentPost != null:
return commentPost(_that);case RepostPost() when repostPost != null:
return repostPost(_that);case SharePost() when sharePost != null:
return sharePost(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId)?  bookmarkPost,TResult Function( String postId)?  likePost,TResult Function( String postId,  String content)?  commentPost,TResult Function( String postId)?  repostPost,TResult Function( String postId)?  sharePost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BookmarkPost() when bookmarkPost != null:
return bookmarkPost(_that.postId);case LikePost() when likePost != null:
return likePost(_that.postId);case CommentPost() when commentPost != null:
return commentPost(_that.postId,_that.content);case RepostPost() when repostPost != null:
return repostPost(_that.postId);case SharePost() when sharePost != null:
return sharePost(_that.postId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId)  bookmarkPost,required TResult Function( String postId)  likePost,required TResult Function( String postId,  String content)  commentPost,required TResult Function( String postId)  repostPost,required TResult Function( String postId)  sharePost,}) {final _that = this;
switch (_that) {
case BookmarkPost():
return bookmarkPost(_that.postId);case LikePost():
return likePost(_that.postId);case CommentPost():
return commentPost(_that.postId,_that.content);case RepostPost():
return repostPost(_that.postId);case SharePost():
return sharePost(_that.postId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId)?  bookmarkPost,TResult? Function( String postId)?  likePost,TResult? Function( String postId,  String content)?  commentPost,TResult? Function( String postId)?  repostPost,TResult? Function( String postId)?  sharePost,}) {final _that = this;
switch (_that) {
case BookmarkPost() when bookmarkPost != null:
return bookmarkPost(_that.postId);case LikePost() when likePost != null:
return likePost(_that.postId);case CommentPost() when commentPost != null:
return commentPost(_that.postId,_that.content);case RepostPost() when repostPost != null:
return repostPost(_that.postId);case SharePost() when sharePost != null:
return sharePost(_that.postId);case _:
  return null;

}
}

}

/// @nodoc


class BookmarkPost implements PostInteractionEvent {
  const BookmarkPost({required this.postId});
  

@override final  String postId;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkPostCopyWith<BookmarkPost> get copyWith => _$BookmarkPostCopyWithImpl<BookmarkPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkPost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionEvent.bookmarkPost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $BookmarkPostCopyWith<$Res> implements $PostInteractionEventCopyWith<$Res> {
  factory $BookmarkPostCopyWith(BookmarkPost value, $Res Function(BookmarkPost) _then) = _$BookmarkPostCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$BookmarkPostCopyWithImpl<$Res>
    implements $BookmarkPostCopyWith<$Res> {
  _$BookmarkPostCopyWithImpl(this._self, this._then);

  final BookmarkPost _self;
  final $Res Function(BookmarkPost) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(BookmarkPost(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LikePost implements PostInteractionEvent {
  const LikePost({required this.postId});
  

@override final  String postId;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikePostCopyWith<LikePost> get copyWith => _$LikePostCopyWithImpl<LikePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikePost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionEvent.likePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $LikePostCopyWith<$Res> implements $PostInteractionEventCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) _then) = _$LikePostCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$LikePostCopyWithImpl<$Res>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(this._self, this._then);

  final LikePost _self;
  final $Res Function(LikePost) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(LikePost(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommentPost implements PostInteractionEvent {
  const CommentPost({required this.postId, required this.content});
  

@override final  String postId;
 final  String content;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPostCopyWith<CommentPost> get copyWith => _$CommentPostCopyWithImpl<CommentPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentPost&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,postId,content);

@override
String toString() {
  return 'PostInteractionEvent.commentPost(postId: $postId, content: $content)';
}


}

/// @nodoc
abstract mixin class $CommentPostCopyWith<$Res> implements $PostInteractionEventCopyWith<$Res> {
  factory $CommentPostCopyWith(CommentPost value, $Res Function(CommentPost) _then) = _$CommentPostCopyWithImpl;
@override @useResult
$Res call({
 String postId, String content
});




}
/// @nodoc
class _$CommentPostCopyWithImpl<$Res>
    implements $CommentPostCopyWith<$Res> {
  _$CommentPostCopyWithImpl(this._self, this._then);

  final CommentPost _self;
  final $Res Function(CommentPost) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? content = null,}) {
  return _then(CommentPost(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RepostPost implements PostInteractionEvent {
  const RepostPost({required this.postId});
  

@override final  String postId;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepostPostCopyWith<RepostPost> get copyWith => _$RepostPostCopyWithImpl<RepostPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepostPost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionEvent.repostPost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RepostPostCopyWith<$Res> implements $PostInteractionEventCopyWith<$Res> {
  factory $RepostPostCopyWith(RepostPost value, $Res Function(RepostPost) _then) = _$RepostPostCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$RepostPostCopyWithImpl<$Res>
    implements $RepostPostCopyWith<$Res> {
  _$RepostPostCopyWithImpl(this._self, this._then);

  final RepostPost _self;
  final $Res Function(RepostPost) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RepostPost(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SharePost implements PostInteractionEvent {
  const SharePost({required this.postId});
  

@override final  String postId;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharePostCopyWith<SharePost> get copyWith => _$SharePostCopyWithImpl<SharePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharePost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionEvent.sharePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $SharePostCopyWith<$Res> implements $PostInteractionEventCopyWith<$Res> {
  factory $SharePostCopyWith(SharePost value, $Res Function(SharePost) _then) = _$SharePostCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$SharePostCopyWithImpl<$Res>
    implements $SharePostCopyWith<$Res> {
  _$SharePostCopyWithImpl(this._self, this._then);

  final SharePost _self;
  final $Res Function(SharePost) _then;

/// Create a copy of PostInteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(SharePost(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PostInteractionState {

 InteractionType get type; InteractionStatus get status; String? get postId; String? get message;
/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostInteractionStateCopyWith<PostInteractionState> get copyWith => _$PostInteractionStateCopyWithImpl<PostInteractionState>(this as PostInteractionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInteractionState&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,type,status,postId,message);

@override
String toString() {
  return 'PostInteractionState(type: $type, status: $status, postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $PostInteractionStateCopyWith<$Res>  {
  factory $PostInteractionStateCopyWith(PostInteractionState value, $Res Function(PostInteractionState) _then) = _$PostInteractionStateCopyWithImpl;
@useResult
$Res call({
 InteractionType type, InteractionStatus status, String? postId, String? message
});




}
/// @nodoc
class _$PostInteractionStateCopyWithImpl<$Res>
    implements $PostInteractionStateCopyWith<$Res> {
  _$PostInteractionStateCopyWithImpl(this._self, this._then);

  final PostInteractionState _self;
  final $Res Function(PostInteractionState) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? postId = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InteractionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InteractionStatus,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostInteractionState].
extension PostInteractionStatePatterns on PostInteractionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostInteractionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostInteractionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostInteractionState value)  $default,){
final _that = this;
switch (_that) {
case _PostInteractionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostInteractionState value)?  $default,){
final _that = this;
switch (_that) {
case _PostInteractionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InteractionType type,  InteractionStatus status,  String? postId,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostInteractionState() when $default != null:
return $default(_that.type,_that.status,_that.postId,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InteractionType type,  InteractionStatus status,  String? postId,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PostInteractionState():
return $default(_that.type,_that.status,_that.postId,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InteractionType type,  InteractionStatus status,  String? postId,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PostInteractionState() when $default != null:
return $default(_that.type,_that.status,_that.postId,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PostInteractionState implements PostInteractionState {
  const _PostInteractionState({this.type = InteractionType.none, this.status = InteractionStatus.idle, this.postId, this.message});
  

@override@JsonKey() final  InteractionType type;
@override@JsonKey() final  InteractionStatus status;
@override final  String? postId;
@override final  String? message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostInteractionStateCopyWith<_PostInteractionState> get copyWith => __$PostInteractionStateCopyWithImpl<_PostInteractionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostInteractionState&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,type,status,postId,message);

@override
String toString() {
  return 'PostInteractionState(type: $type, status: $status, postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PostInteractionStateCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory _$PostInteractionStateCopyWith(_PostInteractionState value, $Res Function(_PostInteractionState) _then) = __$PostInteractionStateCopyWithImpl;
@override @useResult
$Res call({
 InteractionType type, InteractionStatus status, String? postId, String? message
});




}
/// @nodoc
class __$PostInteractionStateCopyWithImpl<$Res>
    implements _$PostInteractionStateCopyWith<$Res> {
  __$PostInteractionStateCopyWithImpl(this._self, this._then);

  final _PostInteractionState _self;
  final $Res Function(_PostInteractionState) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? postId = freezed,Object? message = freezed,}) {
  return _then(_PostInteractionState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as InteractionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InteractionStatus,postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
