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
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchHomePosts value)?  fetchPosts,TResult Function( RefreshHomePosts value)?  refreshPosts,TResult Function( LoadMoreHomePosts value)?  loadMorePosts,TResult Function( FetchFollowingPosts value)?  fetchFollowingPosts,TResult Function( RefreshFollowingPosts value)?  refreshFollowingPosts,TResult Function( LoadMoreFollowingPosts value)?  loadMoreFollowingPosts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchHomePosts() when fetchPosts != null:
return fetchPosts(_that);case RefreshHomePosts() when refreshPosts != null:
return refreshPosts(_that);case LoadMoreHomePosts() when loadMorePosts != null:
return loadMorePosts(_that);case FetchFollowingPosts() when fetchFollowingPosts != null:
return fetchFollowingPosts(_that);case RefreshFollowingPosts() when refreshFollowingPosts != null:
return refreshFollowingPosts(_that);case LoadMoreFollowingPosts() when loadMoreFollowingPosts != null:
return loadMoreFollowingPosts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchHomePosts value)  fetchPosts,required TResult Function( RefreshHomePosts value)  refreshPosts,required TResult Function( LoadMoreHomePosts value)  loadMorePosts,required TResult Function( FetchFollowingPosts value)  fetchFollowingPosts,required TResult Function( RefreshFollowingPosts value)  refreshFollowingPosts,required TResult Function( LoadMoreFollowingPosts value)  loadMoreFollowingPosts,}){
final _that = this;
switch (_that) {
case FetchHomePosts():
return fetchPosts(_that);case RefreshHomePosts():
return refreshPosts(_that);case LoadMoreHomePosts():
return loadMorePosts(_that);case FetchFollowingPosts():
return fetchFollowingPosts(_that);case RefreshFollowingPosts():
return refreshFollowingPosts(_that);case LoadMoreFollowingPosts():
return loadMoreFollowingPosts(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchHomePosts value)?  fetchPosts,TResult? Function( RefreshHomePosts value)?  refreshPosts,TResult? Function( LoadMoreHomePosts value)?  loadMorePosts,TResult? Function( FetchFollowingPosts value)?  fetchFollowingPosts,TResult? Function( RefreshFollowingPosts value)?  refreshFollowingPosts,TResult? Function( LoadMoreFollowingPosts value)?  loadMoreFollowingPosts,}){
final _that = this;
switch (_that) {
case FetchHomePosts() when fetchPosts != null:
return fetchPosts(_that);case RefreshHomePosts() when refreshPosts != null:
return refreshPosts(_that);case LoadMoreHomePosts() when loadMorePosts != null:
return loadMorePosts(_that);case FetchFollowingPosts() when fetchFollowingPosts != null:
return fetchFollowingPosts(_that);case RefreshFollowingPosts() when refreshFollowingPosts != null:
return refreshFollowingPosts(_that);case LoadMoreFollowingPosts() when loadMoreFollowingPosts != null:
return loadMoreFollowingPosts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page,  int limit)?  fetchPosts,TResult Function()?  refreshPosts,TResult Function()?  loadMorePosts,TResult Function( int page,  int limit)?  fetchFollowingPosts,TResult Function()?  refreshFollowingPosts,TResult Function()?  loadMoreFollowingPosts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchHomePosts() when fetchPosts != null:
return fetchPosts(_that.page,_that.limit);case RefreshHomePosts() when refreshPosts != null:
return refreshPosts();case LoadMoreHomePosts() when loadMorePosts != null:
return loadMorePosts();case FetchFollowingPosts() when fetchFollowingPosts != null:
return fetchFollowingPosts(_that.page,_that.limit);case RefreshFollowingPosts() when refreshFollowingPosts != null:
return refreshFollowingPosts();case LoadMoreFollowingPosts() when loadMoreFollowingPosts != null:
return loadMoreFollowingPosts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page,  int limit)  fetchPosts,required TResult Function()  refreshPosts,required TResult Function()  loadMorePosts,required TResult Function( int page,  int limit)  fetchFollowingPosts,required TResult Function()  refreshFollowingPosts,required TResult Function()  loadMoreFollowingPosts,}) {final _that = this;
switch (_that) {
case FetchHomePosts():
return fetchPosts(_that.page,_that.limit);case RefreshHomePosts():
return refreshPosts();case LoadMoreHomePosts():
return loadMorePosts();case FetchFollowingPosts():
return fetchFollowingPosts(_that.page,_that.limit);case RefreshFollowingPosts():
return refreshFollowingPosts();case LoadMoreFollowingPosts():
return loadMoreFollowingPosts();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page,  int limit)?  fetchPosts,TResult? Function()?  refreshPosts,TResult? Function()?  loadMorePosts,TResult? Function( int page,  int limit)?  fetchFollowingPosts,TResult? Function()?  refreshFollowingPosts,TResult? Function()?  loadMoreFollowingPosts,}) {final _that = this;
switch (_that) {
case FetchHomePosts() when fetchPosts != null:
return fetchPosts(_that.page,_that.limit);case RefreshHomePosts() when refreshPosts != null:
return refreshPosts();case LoadMoreHomePosts() when loadMorePosts != null:
return loadMorePosts();case FetchFollowingPosts() when fetchFollowingPosts != null:
return fetchFollowingPosts(_that.page,_that.limit);case RefreshFollowingPosts() when refreshFollowingPosts != null:
return refreshFollowingPosts();case LoadMoreFollowingPosts() when loadMoreFollowingPosts != null:
return loadMoreFollowingPosts();case _:
  return null;

}
}

}

/// @nodoc


class FetchHomePosts implements HomeEvent {
  const FetchHomePosts({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchHomePostsCopyWith<FetchHomePosts> get copyWith => _$FetchHomePostsCopyWithImpl<FetchHomePosts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchHomePosts&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'HomeEvent.fetchPosts(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $FetchHomePostsCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $FetchHomePostsCopyWith(FetchHomePosts value, $Res Function(FetchHomePosts) _then) = _$FetchHomePostsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$FetchHomePostsCopyWithImpl<$Res>
    implements $FetchHomePostsCopyWith<$Res> {
  _$FetchHomePostsCopyWithImpl(this._self, this._then);

  final FetchHomePosts _self;
  final $Res Function(FetchHomePosts) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(FetchHomePosts(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshHomePosts implements HomeEvent {
  const RefreshHomePosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshHomePosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refreshPosts()';
}


}




/// @nodoc


class LoadMoreHomePosts implements HomeEvent {
  const LoadMoreHomePosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreHomePosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadMorePosts()';
}


}




/// @nodoc


class FetchFollowingPosts implements HomeEvent {
  const FetchFollowingPosts({this.page = 1, this.limit = 10});
  

@JsonKey() final  int page;
@JsonKey() final  int limit;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchFollowingPostsCopyWith<FetchFollowingPosts> get copyWith => _$FetchFollowingPostsCopyWithImpl<FetchFollowingPosts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchFollowingPosts&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'HomeEvent.fetchFollowingPosts(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $FetchFollowingPostsCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $FetchFollowingPostsCopyWith(FetchFollowingPosts value, $Res Function(FetchFollowingPosts) _then) = _$FetchFollowingPostsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$FetchFollowingPostsCopyWithImpl<$Res>
    implements $FetchFollowingPostsCopyWith<$Res> {
  _$FetchFollowingPostsCopyWithImpl(this._self, this._then);

  final FetchFollowingPosts _self;
  final $Res Function(FetchFollowingPosts) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(FetchFollowingPosts(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshFollowingPosts implements HomeEvent {
  const RefreshFollowingPosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshFollowingPosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refreshFollowingPosts()';
}


}




/// @nodoc


class LoadMoreFollowingPosts implements HomeEvent {
  const LoadMoreFollowingPosts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreFollowingPosts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadMoreFollowingPosts()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeInitial value)?  initial,TResult Function( HomeLoading value)?  loading,TResult Function( HomeLoaded value)?  loaded,TResult Function( HomeError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomeLoaded() when loaded != null:
return loaded(_that);case HomeError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeInitial value)  initial,required TResult Function( HomeLoading value)  loading,required TResult Function( HomeLoaded value)  loaded,required TResult Function( HomeError value)  error,}){
final _that = this;
switch (_that) {
case HomeInitial():
return initial(_that);case HomeLoading():
return loading(_that);case HomeLoaded():
return loaded(_that);case HomeError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeInitial value)?  initial,TResult? Function( HomeLoading value)?  loading,TResult? Function( HomeLoaded value)?  loaded,TResult? Function( HomeError value)?  error,}){
final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial(_that);case HomeLoading() when loading != null:
return loading(_that);case HomeLoaded() when loaded != null:
return loaded(_that);case HomeError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PostEntity> forYouPost,  int forYouCurrentPage,  bool forYouHasReachedMax,  bool forYouIsLoadingMore,  List<PostEntity> followingPost,  int followingCurrentPage,  bool followingHasReachedMax,  bool followingIsLoadingMore,  bool followingIsLoading,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomeLoaded() when loaded != null:
return loaded(_that.forYouPost,_that.forYouCurrentPage,_that.forYouHasReachedMax,_that.forYouIsLoadingMore,_that.followingPost,_that.followingCurrentPage,_that.followingHasReachedMax,_that.followingIsLoadingMore,_that.followingIsLoading,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case HomeError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PostEntity> forYouPost,  int forYouCurrentPage,  bool forYouHasReachedMax,  bool forYouIsLoadingMore,  List<PostEntity> followingPost,  int followingCurrentPage,  bool followingHasReachedMax,  bool followingIsLoadingMore,  bool followingIsLoading,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case HomeInitial():
return initial();case HomeLoading():
return loading();case HomeLoaded():
return loaded(_that.forYouPost,_that.forYouCurrentPage,_that.forYouHasReachedMax,_that.forYouIsLoadingMore,_that.followingPost,_that.followingCurrentPage,_that.followingHasReachedMax,_that.followingIsLoadingMore,_that.followingIsLoading,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case HomeError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PostEntity> forYouPost,  int forYouCurrentPage,  bool forYouHasReachedMax,  bool forYouIsLoadingMore,  List<PostEntity> followingPost,  int followingCurrentPage,  bool followingHasReachedMax,  bool followingIsLoadingMore,  bool followingIsLoading,  int currentPage,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case HomeInitial() when initial != null:
return initial();case HomeLoading() when loading != null:
return loading();case HomeLoaded() when loaded != null:
return loaded(_that.forYouPost,_that.forYouCurrentPage,_that.forYouHasReachedMax,_that.forYouIsLoadingMore,_that.followingPost,_that.followingCurrentPage,_that.followingHasReachedMax,_that.followingIsLoadingMore,_that.followingIsLoading,_that.currentPage,_that.hasReachedMax,_that.isLoadingMore);case HomeError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class HomeInitial implements HomeState {
  const HomeInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoading implements HomeState {
  const HomeLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomeLoaded implements HomeState {
  const HomeLoaded({final  List<PostEntity> forYouPost = const <PostEntity>[], this.forYouCurrentPage = 1, this.forYouHasReachedMax = false, this.forYouIsLoadingMore = false, final  List<PostEntity> followingPost = const <PostEntity>[], this.followingCurrentPage = 1, this.followingHasReachedMax = false, this.followingIsLoadingMore = false, this.followingIsLoading = false, this.currentPage = 1, this.hasReachedMax = false, this.isLoadingMore = false}): _forYouPost = forYouPost,_followingPost = followingPost;
  

// For You posts
 final  List<PostEntity> _forYouPost;
// For You posts
@JsonKey() List<PostEntity> get forYouPost {
  if (_forYouPost is EqualUnmodifiableListView) return _forYouPost;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forYouPost);
}

@JsonKey() final  int forYouCurrentPage;
@JsonKey() final  bool forYouHasReachedMax;
@JsonKey() final  bool forYouIsLoadingMore;
// Following posts
 final  List<PostEntity> _followingPost;
// Following posts
@JsonKey() List<PostEntity> get followingPost {
  if (_followingPost is EqualUnmodifiableListView) return _followingPost;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_followingPost);
}

@JsonKey() final  int followingCurrentPage;
@JsonKey() final  bool followingHasReachedMax;
@JsonKey() final  bool followingIsLoadingMore;
@JsonKey() final  bool followingIsLoading;
// Legacy fields for backward compatibility
@JsonKey() final  int currentPage;
@JsonKey() final  bool hasReachedMax;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeLoadedCopyWith<HomeLoaded> get copyWith => _$HomeLoadedCopyWithImpl<HomeLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoaded&&const DeepCollectionEquality().equals(other._forYouPost, _forYouPost)&&(identical(other.forYouCurrentPage, forYouCurrentPage) || other.forYouCurrentPage == forYouCurrentPage)&&(identical(other.forYouHasReachedMax, forYouHasReachedMax) || other.forYouHasReachedMax == forYouHasReachedMax)&&(identical(other.forYouIsLoadingMore, forYouIsLoadingMore) || other.forYouIsLoadingMore == forYouIsLoadingMore)&&const DeepCollectionEquality().equals(other._followingPost, _followingPost)&&(identical(other.followingCurrentPage, followingCurrentPage) || other.followingCurrentPage == followingCurrentPage)&&(identical(other.followingHasReachedMax, followingHasReachedMax) || other.followingHasReachedMax == followingHasReachedMax)&&(identical(other.followingIsLoadingMore, followingIsLoadingMore) || other.followingIsLoadingMore == followingIsLoadingMore)&&(identical(other.followingIsLoading, followingIsLoading) || other.followingIsLoading == followingIsLoading)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_forYouPost),forYouCurrentPage,forYouHasReachedMax,forYouIsLoadingMore,const DeepCollectionEquality().hash(_followingPost),followingCurrentPage,followingHasReachedMax,followingIsLoadingMore,followingIsLoading,currentPage,hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'HomeState.loaded(forYouPost: $forYouPost, forYouCurrentPage: $forYouCurrentPage, forYouHasReachedMax: $forYouHasReachedMax, forYouIsLoadingMore: $forYouIsLoadingMore, followingPost: $followingPost, followingCurrentPage: $followingCurrentPage, followingHasReachedMax: $followingHasReachedMax, followingIsLoadingMore: $followingIsLoadingMore, followingIsLoading: $followingIsLoading, currentPage: $currentPage, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $HomeLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeLoadedCopyWith(HomeLoaded value, $Res Function(HomeLoaded) _then) = _$HomeLoadedCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> forYouPost, int forYouCurrentPage, bool forYouHasReachedMax, bool forYouIsLoadingMore, List<PostEntity> followingPost, int followingCurrentPage, bool followingHasReachedMax, bool followingIsLoadingMore, bool followingIsLoading, int currentPage, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class _$HomeLoadedCopyWithImpl<$Res>
    implements $HomeLoadedCopyWith<$Res> {
  _$HomeLoadedCopyWithImpl(this._self, this._then);

  final HomeLoaded _self;
  final $Res Function(HomeLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forYouPost = null,Object? forYouCurrentPage = null,Object? forYouHasReachedMax = null,Object? forYouIsLoadingMore = null,Object? followingPost = null,Object? followingCurrentPage = null,Object? followingHasReachedMax = null,Object? followingIsLoadingMore = null,Object? followingIsLoading = null,Object? currentPage = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(HomeLoaded(
forYouPost: null == forYouPost ? _self._forYouPost : forYouPost // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,forYouCurrentPage: null == forYouCurrentPage ? _self.forYouCurrentPage : forYouCurrentPage // ignore: cast_nullable_to_non_nullable
as int,forYouHasReachedMax: null == forYouHasReachedMax ? _self.forYouHasReachedMax : forYouHasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,forYouIsLoadingMore: null == forYouIsLoadingMore ? _self.forYouIsLoadingMore : forYouIsLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,followingPost: null == followingPost ? _self._followingPost : followingPost // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,followingCurrentPage: null == followingCurrentPage ? _self.followingCurrentPage : followingCurrentPage // ignore: cast_nullable_to_non_nullable
as int,followingHasReachedMax: null == followingHasReachedMax ? _self.followingHasReachedMax : followingHasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,followingIsLoadingMore: null == followingIsLoadingMore ? _self.followingIsLoadingMore : followingIsLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,followingIsLoading: null == followingIsLoading ? _self.followingIsLoading : followingIsLoading // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeError implements HomeState {
  const HomeError({required this.message});
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorCopyWith<HomeError> get copyWith => _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $HomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) _then) = _$HomeErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HomeErrorCopyWithImpl<$Res>
    implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(this._self, this._then);

  final HomeError _self;
  final $Res Function(HomeError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HomeError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
