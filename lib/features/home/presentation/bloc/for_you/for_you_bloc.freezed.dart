// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'for_you_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForYouEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouEvent()';
}


}

/// @nodoc
class $ForYouEventCopyWith<$Res>  {
$ForYouEventCopyWith(ForYouEvent _, $Res Function(ForYouEvent) __);
}


/// Adds pattern-matching-related methods to [ForYouEvent].
extension ForYouEventPatterns on ForYouEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchForYouPosts value)?  fetchPosts,TResult Function( RefreshForYouPosts value)?  refreshPosts,TResult Function( LoadMoreForYouPosts value)?  loadMorePosts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchForYouPosts() when fetchPosts != null:
return fetchPosts(_that);case RefreshForYouPosts() when refreshPosts != null:
return refreshPosts(_that);case LoadMoreForYouPosts() when loadMorePosts != null:
return loadMorePosts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchForYouPosts value)  fetchPosts,required TResult Function( RefreshForYouPosts value)  refreshPosts,required TResult Function( LoadMoreForYouPosts value)  loadMorePosts,}){
final _that = this;
switch (_that) {
case FetchForYouPosts():
return fetchPosts(_that);case RefreshForYouPosts():
return refreshPosts(_that);case LoadMoreForYouPosts():
return loadMorePosts(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchForYouPosts value)?  fetchPosts,TResult? Function( RefreshForYouPosts value)?  refreshPosts,TResult? Function( LoadMoreForYouPosts value)?  loadMorePosts,}){
final _that = this;
switch (_that) {
case FetchForYouPosts() when fetchPosts != null:
return fetchPosts(_that);case RefreshForYouPosts() when refreshPosts != null:
return refreshPosts(_that);case LoadMoreForYouPosts() when loadMorePosts != null:
return loadMorePosts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int limit)?  fetchPosts,TResult Function()?  refreshPosts,TResult Function()?  loadMorePosts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchForYouPosts() when fetchPosts != null:
return fetchPosts(_that.page,_that.limit);case RefreshForYouPosts() when refreshPosts != null:
return refreshPosts();case LoadMoreForYouPosts() when loadMorePosts != null:
return loadMorePosts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int limit)  fetchPosts,required TResult Function()  refreshPosts,required TResult Function()  loadMorePosts,}) {final _that = this;
switch (_that) {
case FetchForYouPosts():
return fetchPosts(_that.page,_that.limit);case RefreshForYouPosts():
return refreshPosts();case LoadMoreForYouPosts():
return loadMorePosts();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int limit)?  fetchPosts,TResult? Function()?  refreshPosts,TResult? Function()?  loadMorePosts,}) {final _that = this;
switch (_that) {
case FetchForYouPosts() when fetchPosts != null:
return fetchPosts(_that.page,_that.limit);case RefreshForYouPosts() when refreshPosts != null:
return refreshPosts();case LoadMoreForYouPosts() when loadMorePosts != null:
return loadMorePosts();case _:
  return null;

}
}

}

/// @nodoc


class FetchForYouPosts implements ForYouEvent {
  const FetchForYouPosts({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of ForYouEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchForYouPostsCopyWith<FetchForYouPosts> get copyWith => _$FetchForYouPostsCopyWithImpl<FetchForYouPosts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchForYouPosts&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'ForYouEvent.fetchPosts(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $FetchForYouPostsCopyWith<$Res> implements $ForYouEventCopyWith<$Res> {
  factory $FetchForYouPostsCopyWith(FetchForYouPosts value, $Res Function(FetchForYouPosts) _then) = _$FetchForYouPostsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$FetchForYouPostsCopyWithImpl<$Res>
    implements $FetchForYouPostsCopyWith<$Res> {
  _$FetchForYouPostsCopyWithImpl(this._self, this._then);

  final FetchForYouPosts _self;
  final $Res Function(FetchForYouPosts) _then;

/// Create a copy of ForYouEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(FetchForYouPosts(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshForYouPosts implements ForYouEvent {
  const RefreshForYouPosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshForYouPosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouEvent.refreshPosts()';
}


}




/// @nodoc


class LoadMoreForYouPosts implements ForYouEvent {
  const LoadMoreForYouPosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreForYouPosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouEvent.loadMorePosts()';
}


}




/// @nodoc
mixin _$ForYouState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouState()';
}


}

/// @nodoc
class $ForYouStateCopyWith<$Res>  {
$ForYouStateCopyWith(ForYouState _, $Res Function(ForYouState) __);
}


/// Adds pattern-matching-related methods to [ForYouState].
extension ForYouStatePatterns on ForYouState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ForYouInitial value)?  initial,TResult Function( ForYouLoading value)?  loading,TResult Function( ForYouLoaded value)?  loaded,TResult Function( ForYouError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ForYouInitial() when initial != null:
return initial(_that);case ForYouLoading() when loading != null:
return loading(_that);case ForYouLoaded() when loaded != null:
return loaded(_that);case ForYouError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ForYouInitial value)  initial,required TResult Function( ForYouLoading value)  loading,required TResult Function( ForYouLoaded value)  loaded,required TResult Function( ForYouError value)  error,}){
final _that = this;
switch (_that) {
case ForYouInitial():
return initial(_that);case ForYouLoading():
return loading(_that);case ForYouLoaded():
return loaded(_that);case ForYouError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ForYouInitial value)?  initial,TResult? Function( ForYouLoading value)?  loading,TResult? Function( ForYouLoaded value)?  loaded,TResult? Function( ForYouError value)?  error,}){
final _that = this;
switch (_that) {
case ForYouInitial() when initial != null:
return initial(_that);case ForYouLoading() when loading != null:
return loading(_that);case ForYouLoaded() when loaded != null:
return loaded(_that);case ForYouError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PostEntity> posts,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ForYouInitial() when initial != null:
return initial();case ForYouLoading() when loading != null:
return loading();case ForYouLoaded() when loaded != null:
return loaded(_that.posts,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case ForYouError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PostEntity> posts,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ForYouInitial():
return initial();case ForYouLoading():
return loading();case ForYouLoaded():
return loaded(_that.posts,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case ForYouError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PostEntity> posts,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ForYouInitial() when initial != null:
return initial();case ForYouLoading() when loading != null:
return loading();case ForYouLoaded() when loaded != null:
return loaded(_that.posts,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case ForYouError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ForYouInitial implements ForYouState {
  const ForYouInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouState.initial()';
}


}




/// @nodoc


class ForYouLoading implements ForYouState {
  const ForYouLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForYouState.loading()';
}


}




/// @nodoc


class ForYouLoaded implements ForYouState {
  const ForYouLoaded({required final  List<PostEntity> posts, this.currentPage = 1, this.hasReachedMax = false, this.isLoadingMore = false}): _posts = posts;
  

 final  List<PostEntity> _posts;
 List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@JsonKey() final  int currentPage;
@JsonKey() final  bool hasReachedMax;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForYouLoadedCopyWith<ForYouLoaded> get copyWith => _$ForYouLoadedCopyWithImpl<ForYouLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouLoaded&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),currentPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'ForYouState.loaded(posts: $posts, currentPage: $currentPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $ForYouLoadedCopyWith<$Res> implements $ForYouStateCopyWith<$Res> {
  factory $ForYouLoadedCopyWith(ForYouLoaded value, $Res Function(ForYouLoaded) _then) = _$ForYouLoadedCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> posts, int currentPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$ForYouLoadedCopyWithImpl<$Res>
    implements $ForYouLoadedCopyWith<$Res> {
  _$ForYouLoadedCopyWithImpl(this._self, this._then);

  final ForYouLoaded _self;
  final $Res Function(ForYouLoaded) _then;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? currentPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(ForYouLoaded(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ForYouError implements ForYouState {
  const ForYouError({required this.message});
  

 final  String message;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForYouErrorCopyWith<ForYouError> get copyWith => _$ForYouErrorCopyWithImpl<ForYouError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForYouError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ForYouState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForYouErrorCopyWith<$Res> implements $ForYouStateCopyWith<$Res> {
  factory $ForYouErrorCopyWith(ForYouError value, $Res Function(ForYouError) _then) = _$ForYouErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ForYouErrorCopyWithImpl<$Res>
    implements $ForYouErrorCopyWith<$Res> {
  _$ForYouErrorCopyWithImpl(this._self, this._then);

  final ForYouError _self;
  final $Res Function(ForYouError) _then;

/// Create a copy of ForYouState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ForYouError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
