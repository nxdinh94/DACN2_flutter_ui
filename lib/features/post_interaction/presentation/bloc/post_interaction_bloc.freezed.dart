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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInteractionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostInteractionState()';
}


}

/// @nodoc
class $PostInteractionStateCopyWith<$Res>  {
$PostInteractionStateCopyWith(PostInteractionState _, $Res Function(PostInteractionState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostInteractionInitial value)?  initial,TResult Function( BookmarkLoading value)?  bookmarkLoading,TResult Function( BookmarkSuccess value)?  bookmarkSuccess,TResult Function( BookmarkError value)?  bookmarkError,TResult Function( LikeLoading value)?  likeLoading,TResult Function( LikeSuccess value)?  likeSuccess,TResult Function( LikeError value)?  likeError,TResult Function( CommentLoading value)?  commentLoading,TResult Function( CommentSuccess value)?  commentSuccess,TResult Function( CommentError value)?  commentError,TResult Function( RepostLoading value)?  repostLoading,TResult Function( RepostSuccess value)?  repostSuccess,TResult Function( RepostError value)?  repostError,TResult Function( ShareLoading value)?  shareLoading,TResult Function( ShareSuccess value)?  shareSuccess,TResult Function( ShareError value)?  shareError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostInteractionInitial() when initial != null:
return initial(_that);case BookmarkLoading() when bookmarkLoading != null:
return bookmarkLoading(_that);case BookmarkSuccess() when bookmarkSuccess != null:
return bookmarkSuccess(_that);case BookmarkError() when bookmarkError != null:
return bookmarkError(_that);case LikeLoading() when likeLoading != null:
return likeLoading(_that);case LikeSuccess() when likeSuccess != null:
return likeSuccess(_that);case LikeError() when likeError != null:
return likeError(_that);case CommentLoading() when commentLoading != null:
return commentLoading(_that);case CommentSuccess() when commentSuccess != null:
return commentSuccess(_that);case CommentError() when commentError != null:
return commentError(_that);case RepostLoading() when repostLoading != null:
return repostLoading(_that);case RepostSuccess() when repostSuccess != null:
return repostSuccess(_that);case RepostError() when repostError != null:
return repostError(_that);case ShareLoading() when shareLoading != null:
return shareLoading(_that);case ShareSuccess() when shareSuccess != null:
return shareSuccess(_that);case ShareError() when shareError != null:
return shareError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostInteractionInitial value)  initial,required TResult Function( BookmarkLoading value)  bookmarkLoading,required TResult Function( BookmarkSuccess value)  bookmarkSuccess,required TResult Function( BookmarkError value)  bookmarkError,required TResult Function( LikeLoading value)  likeLoading,required TResult Function( LikeSuccess value)  likeSuccess,required TResult Function( LikeError value)  likeError,required TResult Function( CommentLoading value)  commentLoading,required TResult Function( CommentSuccess value)  commentSuccess,required TResult Function( CommentError value)  commentError,required TResult Function( RepostLoading value)  repostLoading,required TResult Function( RepostSuccess value)  repostSuccess,required TResult Function( RepostError value)  repostError,required TResult Function( ShareLoading value)  shareLoading,required TResult Function( ShareSuccess value)  shareSuccess,required TResult Function( ShareError value)  shareError,}){
final _that = this;
switch (_that) {
case PostInteractionInitial():
return initial(_that);case BookmarkLoading():
return bookmarkLoading(_that);case BookmarkSuccess():
return bookmarkSuccess(_that);case BookmarkError():
return bookmarkError(_that);case LikeLoading():
return likeLoading(_that);case LikeSuccess():
return likeSuccess(_that);case LikeError():
return likeError(_that);case CommentLoading():
return commentLoading(_that);case CommentSuccess():
return commentSuccess(_that);case CommentError():
return commentError(_that);case RepostLoading():
return repostLoading(_that);case RepostSuccess():
return repostSuccess(_that);case RepostError():
return repostError(_that);case ShareLoading():
return shareLoading(_that);case ShareSuccess():
return shareSuccess(_that);case ShareError():
return shareError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostInteractionInitial value)?  initial,TResult? Function( BookmarkLoading value)?  bookmarkLoading,TResult? Function( BookmarkSuccess value)?  bookmarkSuccess,TResult? Function( BookmarkError value)?  bookmarkError,TResult? Function( LikeLoading value)?  likeLoading,TResult? Function( LikeSuccess value)?  likeSuccess,TResult? Function( LikeError value)?  likeError,TResult? Function( CommentLoading value)?  commentLoading,TResult? Function( CommentSuccess value)?  commentSuccess,TResult? Function( CommentError value)?  commentError,TResult? Function( RepostLoading value)?  repostLoading,TResult? Function( RepostSuccess value)?  repostSuccess,TResult? Function( RepostError value)?  repostError,TResult? Function( ShareLoading value)?  shareLoading,TResult? Function( ShareSuccess value)?  shareSuccess,TResult? Function( ShareError value)?  shareError,}){
final _that = this;
switch (_that) {
case PostInteractionInitial() when initial != null:
return initial(_that);case BookmarkLoading() when bookmarkLoading != null:
return bookmarkLoading(_that);case BookmarkSuccess() when bookmarkSuccess != null:
return bookmarkSuccess(_that);case BookmarkError() when bookmarkError != null:
return bookmarkError(_that);case LikeLoading() when likeLoading != null:
return likeLoading(_that);case LikeSuccess() when likeSuccess != null:
return likeSuccess(_that);case LikeError() when likeError != null:
return likeError(_that);case CommentLoading() when commentLoading != null:
return commentLoading(_that);case CommentSuccess() when commentSuccess != null:
return commentSuccess(_that);case CommentError() when commentError != null:
return commentError(_that);case RepostLoading() when repostLoading != null:
return repostLoading(_that);case RepostSuccess() when repostSuccess != null:
return repostSuccess(_that);case RepostError() when repostError != null:
return repostError(_that);case ShareLoading() when shareLoading != null:
return shareLoading(_that);case ShareSuccess() when shareSuccess != null:
return shareSuccess(_that);case ShareError() when shareError != null:
return shareError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String postId)?  bookmarkLoading,TResult Function( String postId)?  bookmarkSuccess,TResult Function( String postId,  String message)?  bookmarkError,TResult Function( String postId)?  likeLoading,TResult Function( String postId)?  likeSuccess,TResult Function( String postId,  String message)?  likeError,TResult Function( String postId)?  commentLoading,TResult Function( String postId)?  commentSuccess,TResult Function( String postId,  String message)?  commentError,TResult Function( String postId)?  repostLoading,TResult Function( String postId)?  repostSuccess,TResult Function( String postId,  String message)?  repostError,TResult Function( String postId)?  shareLoading,TResult Function( String postId)?  shareSuccess,TResult Function( String postId,  String message)?  shareError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostInteractionInitial() when initial != null:
return initial();case BookmarkLoading() when bookmarkLoading != null:
return bookmarkLoading(_that.postId);case BookmarkSuccess() when bookmarkSuccess != null:
return bookmarkSuccess(_that.postId);case BookmarkError() when bookmarkError != null:
return bookmarkError(_that.postId,_that.message);case LikeLoading() when likeLoading != null:
return likeLoading(_that.postId);case LikeSuccess() when likeSuccess != null:
return likeSuccess(_that.postId);case LikeError() when likeError != null:
return likeError(_that.postId,_that.message);case CommentLoading() when commentLoading != null:
return commentLoading(_that.postId);case CommentSuccess() when commentSuccess != null:
return commentSuccess(_that.postId);case CommentError() when commentError != null:
return commentError(_that.postId,_that.message);case RepostLoading() when repostLoading != null:
return repostLoading(_that.postId);case RepostSuccess() when repostSuccess != null:
return repostSuccess(_that.postId);case RepostError() when repostError != null:
return repostError(_that.postId,_that.message);case ShareLoading() when shareLoading != null:
return shareLoading(_that.postId);case ShareSuccess() when shareSuccess != null:
return shareSuccess(_that.postId);case ShareError() when shareError != null:
return shareError(_that.postId,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String postId)  bookmarkLoading,required TResult Function( String postId)  bookmarkSuccess,required TResult Function( String postId,  String message)  bookmarkError,required TResult Function( String postId)  likeLoading,required TResult Function( String postId)  likeSuccess,required TResult Function( String postId,  String message)  likeError,required TResult Function( String postId)  commentLoading,required TResult Function( String postId)  commentSuccess,required TResult Function( String postId,  String message)  commentError,required TResult Function( String postId)  repostLoading,required TResult Function( String postId)  repostSuccess,required TResult Function( String postId,  String message)  repostError,required TResult Function( String postId)  shareLoading,required TResult Function( String postId)  shareSuccess,required TResult Function( String postId,  String message)  shareError,}) {final _that = this;
switch (_that) {
case PostInteractionInitial():
return initial();case BookmarkLoading():
return bookmarkLoading(_that.postId);case BookmarkSuccess():
return bookmarkSuccess(_that.postId);case BookmarkError():
return bookmarkError(_that.postId,_that.message);case LikeLoading():
return likeLoading(_that.postId);case LikeSuccess():
return likeSuccess(_that.postId);case LikeError():
return likeError(_that.postId,_that.message);case CommentLoading():
return commentLoading(_that.postId);case CommentSuccess():
return commentSuccess(_that.postId);case CommentError():
return commentError(_that.postId,_that.message);case RepostLoading():
return repostLoading(_that.postId);case RepostSuccess():
return repostSuccess(_that.postId);case RepostError():
return repostError(_that.postId,_that.message);case ShareLoading():
return shareLoading(_that.postId);case ShareSuccess():
return shareSuccess(_that.postId);case ShareError():
return shareError(_that.postId,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String postId)?  bookmarkLoading,TResult? Function( String postId)?  bookmarkSuccess,TResult? Function( String postId,  String message)?  bookmarkError,TResult? Function( String postId)?  likeLoading,TResult? Function( String postId)?  likeSuccess,TResult? Function( String postId,  String message)?  likeError,TResult? Function( String postId)?  commentLoading,TResult? Function( String postId)?  commentSuccess,TResult? Function( String postId,  String message)?  commentError,TResult? Function( String postId)?  repostLoading,TResult? Function( String postId)?  repostSuccess,TResult? Function( String postId,  String message)?  repostError,TResult? Function( String postId)?  shareLoading,TResult? Function( String postId)?  shareSuccess,TResult? Function( String postId,  String message)?  shareError,}) {final _that = this;
switch (_that) {
case PostInteractionInitial() when initial != null:
return initial();case BookmarkLoading() when bookmarkLoading != null:
return bookmarkLoading(_that.postId);case BookmarkSuccess() when bookmarkSuccess != null:
return bookmarkSuccess(_that.postId);case BookmarkError() when bookmarkError != null:
return bookmarkError(_that.postId,_that.message);case LikeLoading() when likeLoading != null:
return likeLoading(_that.postId);case LikeSuccess() when likeSuccess != null:
return likeSuccess(_that.postId);case LikeError() when likeError != null:
return likeError(_that.postId,_that.message);case CommentLoading() when commentLoading != null:
return commentLoading(_that.postId);case CommentSuccess() when commentSuccess != null:
return commentSuccess(_that.postId);case CommentError() when commentError != null:
return commentError(_that.postId,_that.message);case RepostLoading() when repostLoading != null:
return repostLoading(_that.postId);case RepostSuccess() when repostSuccess != null:
return repostSuccess(_that.postId);case RepostError() when repostError != null:
return repostError(_that.postId,_that.message);case ShareLoading() when shareLoading != null:
return shareLoading(_that.postId);case ShareSuccess() when shareSuccess != null:
return shareSuccess(_that.postId);case ShareError() when shareError != null:
return shareError(_that.postId,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PostInteractionInitial implements PostInteractionState {
  const PostInteractionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInteractionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostInteractionState.initial()';
}


}




/// @nodoc


class BookmarkLoading implements PostInteractionState {
  const BookmarkLoading({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkLoadingCopyWith<BookmarkLoading> get copyWith => _$BookmarkLoadingCopyWithImpl<BookmarkLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkLoading&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.bookmarkLoading(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $BookmarkLoadingCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $BookmarkLoadingCopyWith(BookmarkLoading value, $Res Function(BookmarkLoading) _then) = _$BookmarkLoadingCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$BookmarkLoadingCopyWithImpl<$Res>
    implements $BookmarkLoadingCopyWith<$Res> {
  _$BookmarkLoadingCopyWithImpl(this._self, this._then);

  final BookmarkLoading _self;
  final $Res Function(BookmarkLoading) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(BookmarkLoading(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BookmarkSuccess implements PostInteractionState {
  const BookmarkSuccess({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkSuccessCopyWith<BookmarkSuccess> get copyWith => _$BookmarkSuccessCopyWithImpl<BookmarkSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.bookmarkSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $BookmarkSuccessCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $BookmarkSuccessCopyWith(BookmarkSuccess value, $Res Function(BookmarkSuccess) _then) = _$BookmarkSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$BookmarkSuccessCopyWithImpl<$Res>
    implements $BookmarkSuccessCopyWith<$Res> {
  _$BookmarkSuccessCopyWithImpl(this._self, this._then);

  final BookmarkSuccess _self;
  final $Res Function(BookmarkSuccess) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(BookmarkSuccess(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BookmarkError implements PostInteractionState {
  const BookmarkError({required this.postId, required this.message});
  

 final  String postId;
 final  String message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkErrorCopyWith<BookmarkError> get copyWith => _$BookmarkErrorCopyWithImpl<BookmarkError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkError&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostInteractionState.bookmarkError(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $BookmarkErrorCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $BookmarkErrorCopyWith(BookmarkError value, $Res Function(BookmarkError) _then) = _$BookmarkErrorCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class _$BookmarkErrorCopyWithImpl<$Res>
    implements $BookmarkErrorCopyWith<$Res> {
  _$BookmarkErrorCopyWithImpl(this._self, this._then);

  final BookmarkError _self;
  final $Res Function(BookmarkError) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(BookmarkError(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LikeLoading implements PostInteractionState {
  const LikeLoading({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeLoadingCopyWith<LikeLoading> get copyWith => _$LikeLoadingCopyWithImpl<LikeLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeLoading&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.likeLoading(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $LikeLoadingCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $LikeLoadingCopyWith(LikeLoading value, $Res Function(LikeLoading) _then) = _$LikeLoadingCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$LikeLoadingCopyWithImpl<$Res>
    implements $LikeLoadingCopyWith<$Res> {
  _$LikeLoadingCopyWithImpl(this._self, this._then);

  final LikeLoading _self;
  final $Res Function(LikeLoading) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(LikeLoading(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LikeSuccess implements PostInteractionState {
  const LikeSuccess({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeSuccessCopyWith<LikeSuccess> get copyWith => _$LikeSuccessCopyWithImpl<LikeSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.likeSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $LikeSuccessCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $LikeSuccessCopyWith(LikeSuccess value, $Res Function(LikeSuccess) _then) = _$LikeSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$LikeSuccessCopyWithImpl<$Res>
    implements $LikeSuccessCopyWith<$Res> {
  _$LikeSuccessCopyWithImpl(this._self, this._then);

  final LikeSuccess _self;
  final $Res Function(LikeSuccess) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(LikeSuccess(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LikeError implements PostInteractionState {
  const LikeError({required this.postId, required this.message});
  

 final  String postId;
 final  String message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeErrorCopyWith<LikeError> get copyWith => _$LikeErrorCopyWithImpl<LikeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeError&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostInteractionState.likeError(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $LikeErrorCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $LikeErrorCopyWith(LikeError value, $Res Function(LikeError) _then) = _$LikeErrorCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class _$LikeErrorCopyWithImpl<$Res>
    implements $LikeErrorCopyWith<$Res> {
  _$LikeErrorCopyWithImpl(this._self, this._then);

  final LikeError _self;
  final $Res Function(LikeError) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(LikeError(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommentLoading implements PostInteractionState {
  const CommentLoading({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentLoadingCopyWith<CommentLoading> get copyWith => _$CommentLoadingCopyWithImpl<CommentLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentLoading&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.commentLoading(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $CommentLoadingCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $CommentLoadingCopyWith(CommentLoading value, $Res Function(CommentLoading) _then) = _$CommentLoadingCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$CommentLoadingCopyWithImpl<$Res>
    implements $CommentLoadingCopyWith<$Res> {
  _$CommentLoadingCopyWithImpl(this._self, this._then);

  final CommentLoading _self;
  final $Res Function(CommentLoading) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(CommentLoading(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommentSuccess implements PostInteractionState {
  const CommentSuccess({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentSuccessCopyWith<CommentSuccess> get copyWith => _$CommentSuccessCopyWithImpl<CommentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.commentSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $CommentSuccessCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $CommentSuccessCopyWith(CommentSuccess value, $Res Function(CommentSuccess) _then) = _$CommentSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$CommentSuccessCopyWithImpl<$Res>
    implements $CommentSuccessCopyWith<$Res> {
  _$CommentSuccessCopyWithImpl(this._self, this._then);

  final CommentSuccess _self;
  final $Res Function(CommentSuccess) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(CommentSuccess(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommentError implements PostInteractionState {
  const CommentError({required this.postId, required this.message});
  

 final  String postId;
 final  String message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentErrorCopyWith<CommentError> get copyWith => _$CommentErrorCopyWithImpl<CommentError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentError&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostInteractionState.commentError(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $CommentErrorCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $CommentErrorCopyWith(CommentError value, $Res Function(CommentError) _then) = _$CommentErrorCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class _$CommentErrorCopyWithImpl<$Res>
    implements $CommentErrorCopyWith<$Res> {
  _$CommentErrorCopyWithImpl(this._self, this._then);

  final CommentError _self;
  final $Res Function(CommentError) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(CommentError(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RepostLoading implements PostInteractionState {
  const RepostLoading({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepostLoadingCopyWith<RepostLoading> get copyWith => _$RepostLoadingCopyWithImpl<RepostLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepostLoading&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.repostLoading(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RepostLoadingCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $RepostLoadingCopyWith(RepostLoading value, $Res Function(RepostLoading) _then) = _$RepostLoadingCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$RepostLoadingCopyWithImpl<$Res>
    implements $RepostLoadingCopyWith<$Res> {
  _$RepostLoadingCopyWithImpl(this._self, this._then);

  final RepostLoading _self;
  final $Res Function(RepostLoading) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RepostLoading(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RepostSuccess implements PostInteractionState {
  const RepostSuccess({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepostSuccessCopyWith<RepostSuccess> get copyWith => _$RepostSuccessCopyWithImpl<RepostSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepostSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.repostSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RepostSuccessCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $RepostSuccessCopyWith(RepostSuccess value, $Res Function(RepostSuccess) _then) = _$RepostSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$RepostSuccessCopyWithImpl<$Res>
    implements $RepostSuccessCopyWith<$Res> {
  _$RepostSuccessCopyWithImpl(this._self, this._then);

  final RepostSuccess _self;
  final $Res Function(RepostSuccess) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RepostSuccess(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RepostError implements PostInteractionState {
  const RepostError({required this.postId, required this.message});
  

 final  String postId;
 final  String message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepostErrorCopyWith<RepostError> get copyWith => _$RepostErrorCopyWithImpl<RepostError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepostError&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostInteractionState.repostError(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $RepostErrorCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $RepostErrorCopyWith(RepostError value, $Res Function(RepostError) _then) = _$RepostErrorCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class _$RepostErrorCopyWithImpl<$Res>
    implements $RepostErrorCopyWith<$Res> {
  _$RepostErrorCopyWithImpl(this._self, this._then);

  final RepostError _self;
  final $Res Function(RepostError) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(RepostError(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShareLoading implements PostInteractionState {
  const ShareLoading({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareLoadingCopyWith<ShareLoading> get copyWith => _$ShareLoadingCopyWithImpl<ShareLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareLoading&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.shareLoading(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $ShareLoadingCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $ShareLoadingCopyWith(ShareLoading value, $Res Function(ShareLoading) _then) = _$ShareLoadingCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$ShareLoadingCopyWithImpl<$Res>
    implements $ShareLoadingCopyWith<$Res> {
  _$ShareLoadingCopyWithImpl(this._self, this._then);

  final ShareLoading _self;
  final $Res Function(ShareLoading) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(ShareLoading(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShareSuccess implements PostInteractionState {
  const ShareSuccess({required this.postId});
  

 final  String postId;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareSuccessCopyWith<ShareSuccess> get copyWith => _$ShareSuccessCopyWithImpl<ShareSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostInteractionState.shareSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $ShareSuccessCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $ShareSuccessCopyWith(ShareSuccess value, $Res Function(ShareSuccess) _then) = _$ShareSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$ShareSuccessCopyWithImpl<$Res>
    implements $ShareSuccessCopyWith<$Res> {
  _$ShareSuccessCopyWithImpl(this._self, this._then);

  final ShareSuccess _self;
  final $Res Function(ShareSuccess) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(ShareSuccess(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ShareError implements PostInteractionState {
  const ShareError({required this.postId, required this.message});
  

 final  String postId;
 final  String message;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareErrorCopyWith<ShareError> get copyWith => _$ShareErrorCopyWithImpl<ShareError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareError&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,postId,message);

@override
String toString() {
  return 'PostInteractionState.shareError(postId: $postId, message: $message)';
}


}

/// @nodoc
abstract mixin class $ShareErrorCopyWith<$Res> implements $PostInteractionStateCopyWith<$Res> {
  factory $ShareErrorCopyWith(ShareError value, $Res Function(ShareError) _then) = _$ShareErrorCopyWithImpl;
@useResult
$Res call({
 String postId, String message
});




}
/// @nodoc
class _$ShareErrorCopyWithImpl<$Res>
    implements $ShareErrorCopyWith<$Res> {
  _$ShareErrorCopyWithImpl(this._self, this._then);

  final ShareError _self;
  final $Res Function(ShareError) _then;

/// Create a copy of PostInteractionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? message = null,}) {
  return _then(ShareError(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
