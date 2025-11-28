// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEvent {

 int get page;
/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostEventCopyWith<PostEvent> get copyWith => _$PostEventCopyWithImpl<PostEvent>(this as PostEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'PostEvent(page: $page)';
}


}

/// @nodoc
abstract mixin class $PostEventCopyWith<$Res>  {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) _then) = _$PostEventCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$PostEventCopyWithImpl<$Res>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._self, this._then);

  final PostEvent _self;
  final $Res Function(PostEvent) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PostEvent].
extension PostEventPatterns on PostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetPosts value)?  getPosts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetPosts() when getPosts != null:
return getPosts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetPosts value)  getPosts,}){
final _that = this;
switch (_that) {
case GetPosts():
return getPosts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetPosts value)?  getPosts,}){
final _that = this;
switch (_that) {
case GetPosts() when getPosts != null:
return getPosts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  getPosts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetPosts() when getPosts != null:
return getPosts(_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  getPosts,}) {final _that = this;
switch (_that) {
case GetPosts():
return getPosts(_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  getPosts,}) {final _that = this;
switch (_that) {
case GetPosts() when getPosts != null:
return getPosts(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class GetPosts implements PostEvent {
   GetPosts({required this.page});
  

@override final  int page;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPostsCopyWith<GetPosts> get copyWith => _$GetPostsCopyWithImpl<GetPosts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPosts&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'PostEvent.getPosts(page: $page)';
}


}

/// @nodoc
abstract mixin class $GetPostsCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $GetPostsCopyWith(GetPosts value, $Res Function(GetPosts) _then) = _$GetPostsCopyWithImpl;
@override @useResult
$Res call({
 int page
});




}
/// @nodoc
class _$GetPostsCopyWithImpl<$Res>
    implements $GetPostsCopyWith<$Res> {
  _$GetPostsCopyWithImpl(this._self, this._then);

  final GetPosts _self;
  final $Res Function(GetPosts) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(GetPosts(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PostsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsState()';
}


}

/// @nodoc
class $PostsStateCopyWith<$Res>  {
$PostsStateCopyWith(PostsState _, $Res Function(PostsState) __);
}


/// Adds pattern-matching-related methods to [PostsState].
extension PostsStatePatterns on PostsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostsInitial value)?  initial,TResult Function( PostsLoading value)?  loading,TResult Function( PostsLoaded value)?  loaded,TResult Function( PostsError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostsInitial() when initial != null:
return initial(_that);case PostsLoading() when loading != null:
return loading(_that);case PostsLoaded() when loaded != null:
return loaded(_that);case PostsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostsInitial value)  initial,required TResult Function( PostsLoading value)  loading,required TResult Function( PostsLoaded value)  loaded,required TResult Function( PostsError value)  error,}){
final _that = this;
switch (_that) {
case PostsInitial():
return initial(_that);case PostsLoading():
return loading(_that);case PostsLoaded():
return loaded(_that);case PostsError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostsInitial value)?  initial,TResult? Function( PostsLoading value)?  loading,TResult? Function( PostsLoaded value)?  loaded,TResult? Function( PostsError value)?  error,}){
final _that = this;
switch (_that) {
case PostsInitial() when initial != null:
return initial(_that);case PostsLoading() when loading != null:
return loading(_that);case PostsLoaded() when loaded != null:
return loaded(_that);case PostsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PostEntity> selfPosts,  List<PostEntity> likedPosts,  List<PostEntity> bookmarkedPosts)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostsInitial() when initial != null:
return initial();case PostsLoading() when loading != null:
return loading();case PostsLoaded() when loaded != null:
return loaded(_that.selfPosts,_that.likedPosts,_that.bookmarkedPosts);case PostsError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PostEntity> selfPosts,  List<PostEntity> likedPosts,  List<PostEntity> bookmarkedPosts)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case PostsInitial():
return initial();case PostsLoading():
return loading();case PostsLoaded():
return loaded(_that.selfPosts,_that.likedPosts,_that.bookmarkedPosts);case PostsError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PostEntity> selfPosts,  List<PostEntity> likedPosts,  List<PostEntity> bookmarkedPosts)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case PostsInitial() when initial != null:
return initial();case PostsLoading() when loading != null:
return loading();case PostsLoaded() when loaded != null:
return loaded(_that.selfPosts,_that.likedPosts,_that.bookmarkedPosts);case PostsError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PostsInitial implements PostsState {
  const PostsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsState.initial()';
}


}




/// @nodoc


class PostsLoading implements PostsState {
  const PostsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsState.loading()';
}


}




/// @nodoc


class PostsLoaded implements PostsState {
  const PostsLoaded({final  List<PostEntity> selfPosts = const <PostEntity>[], final  List<PostEntity> likedPosts = const <PostEntity>[], final  List<PostEntity> bookmarkedPosts = const <PostEntity>[]}): _selfPosts = selfPosts,_likedPosts = likedPosts,_bookmarkedPosts = bookmarkedPosts;
  

 final  List<PostEntity> _selfPosts;
@JsonKey() List<PostEntity> get selfPosts {
  if (_selfPosts is EqualUnmodifiableListView) return _selfPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selfPosts);
}

 final  List<PostEntity> _likedPosts;
@JsonKey() List<PostEntity> get likedPosts {
  if (_likedPosts is EqualUnmodifiableListView) return _likedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likedPosts);
}

 final  List<PostEntity> _bookmarkedPosts;
@JsonKey() List<PostEntity> get bookmarkedPosts {
  if (_bookmarkedPosts is EqualUnmodifiableListView) return _bookmarkedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookmarkedPosts);
}


/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsLoadedCopyWith<PostsLoaded> get copyWith => _$PostsLoadedCopyWithImpl<PostsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsLoaded&&const DeepCollectionEquality().equals(other._selfPosts, _selfPosts)&&const DeepCollectionEquality().equals(other._likedPosts, _likedPosts)&&const DeepCollectionEquality().equals(other._bookmarkedPosts, _bookmarkedPosts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selfPosts),const DeepCollectionEquality().hash(_likedPosts),const DeepCollectionEquality().hash(_bookmarkedPosts));

@override
String toString() {
  return 'PostsState.loaded(selfPosts: $selfPosts, likedPosts: $likedPosts, bookmarkedPosts: $bookmarkedPosts)';
}


}

/// @nodoc
abstract mixin class $PostsLoadedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory $PostsLoadedCopyWith(PostsLoaded value, $Res Function(PostsLoaded) _then) = _$PostsLoadedCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> selfPosts, List<PostEntity> likedPosts, List<PostEntity> bookmarkedPosts
});




}
/// @nodoc
class _$PostsLoadedCopyWithImpl<$Res>
    implements $PostsLoadedCopyWith<$Res> {
  _$PostsLoadedCopyWithImpl(this._self, this._then);

  final PostsLoaded _self;
  final $Res Function(PostsLoaded) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selfPosts = null,Object? likedPosts = null,Object? bookmarkedPosts = null,}) {
  return _then(PostsLoaded(
selfPosts: null == selfPosts ? _self._selfPosts : selfPosts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,likedPosts: null == likedPosts ? _self._likedPosts : likedPosts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,bookmarkedPosts: null == bookmarkedPosts ? _self._bookmarkedPosts : bookmarkedPosts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,
  ));
}


}

/// @nodoc


class PostsError implements PostsState {
  const PostsError({required this.message});
  

 final  String message;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsErrorCopyWith<PostsError> get copyWith => _$PostsErrorCopyWithImpl<PostsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PostsErrorCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory $PostsErrorCopyWith(PostsError value, $Res Function(PostsError) _then) = _$PostsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PostsErrorCopyWithImpl<$Res>
    implements $PostsErrorCopyWith<$Res> {
  _$PostsErrorCopyWithImpl(this._self, this._then);

  final PostsError _self;
  final $Res Function(PostsError) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PostsError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
