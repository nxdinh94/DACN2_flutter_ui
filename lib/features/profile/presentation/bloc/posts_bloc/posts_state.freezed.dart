// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PostsInitial value)?  initial,TResult Function( _PostsLoading value)?  loading,TResult Function( _PostsLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsInitial() when initial != null:
return initial(_that);case _PostsLoading() when loading != null:
return loading(_that);case _PostsLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PostsInitial value)  initial,required TResult Function( _PostsLoading value)  loading,required TResult Function( _PostsLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case _PostsInitial():
return initial(_that);case _PostsLoading():
return loading(_that);case _PostsLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PostsInitial value)?  initial,TResult? Function( _PostsLoading value)?  loading,TResult? Function( _PostsLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _PostsInitial() when initial != null:
return initial(_that);case _PostsLoading() when loading != null:
return loading(_that);case _PostsLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PostEntity> posts,  bool hasReachedMax)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsInitial() when initial != null:
return initial();case _PostsLoading() when loading != null:
return loading();case _PostsLoaded() when loaded != null:
return loaded(_that.posts,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PostEntity> posts,  bool hasReachedMax)  loaded,}) {final _that = this;
switch (_that) {
case _PostsInitial():
return initial();case _PostsLoading():
return loading();case _PostsLoaded():
return loaded(_that.posts,_that.hasReachedMax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PostEntity> posts,  bool hasReachedMax)?  loaded,}) {final _that = this;
switch (_that) {
case _PostsInitial() when initial != null:
return initial();case _PostsLoading() when loading != null:
return loading();case _PostsLoaded() when loaded != null:
return loaded(_that.posts,_that.hasReachedMax);case _:
  return null;

}
}

}

/// @nodoc


class _PostsInitial implements PostsState {
  const _PostsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsState.initial()';
}


}




/// @nodoc


class _PostsLoading implements PostsState {
  const _PostsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsState.loading()';
}


}




/// @nodoc


class _PostsLoaded implements PostsState {
  const _PostsLoaded({required final  List<PostEntity> posts, required this.hasReachedMax}): _posts = posts;
  

 final  List<PostEntity> _posts;
 List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

 final  bool hasReachedMax;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsLoadedCopyWith<_PostsLoaded> get copyWith => __$PostsLoadedCopyWithImpl<_PostsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsLoaded&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),hasReachedMax);

@override
String toString() {
  return 'PostsState.loaded(posts: $posts, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$PostsLoadedCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$PostsLoadedCopyWith(_PostsLoaded value, $Res Function(_PostsLoaded) _then) = __$PostsLoadedCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> posts, bool hasReachedMax
});




}
/// @nodoc
class __$PostsLoadedCopyWithImpl<$Res>
    implements _$PostsLoadedCopyWith<$Res> {
  __$PostsLoadedCopyWithImpl(this._self, this._then);

  final _PostsLoaded _self;
  final $Res Function(_PostsLoaded) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? hasReachedMax = null,}) {
  return _then(_PostsLoaded(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
