// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreatePostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostEvent()';
}


}

/// @nodoc
class $CreatePostEventCopyWith<$Res>  {
$CreatePostEventCopyWith(CreatePostEvent _, $Res Function(CreatePostEvent) __);
}


/// Adds pattern-matching-related methods to [CreatePostEvent].
extension CreatePostEventPatterns on CreatePostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CollectingDataEvent value)?  collectingData,TResult Function( StartPostEvent value)?  startPost,TResult Function( ResetCreatePostEvent value)?  resetCreatePostEvent,TResult Function( RemoveAnSelectedImageEvent value)?  removeAnSelectedImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CollectingDataEvent() when collectingData != null:
return collectingData(_that);case StartPostEvent() when startPost != null:
return startPost(_that);case ResetCreatePostEvent() when resetCreatePostEvent != null:
return resetCreatePostEvent(_that);case RemoveAnSelectedImageEvent() when removeAnSelectedImage != null:
return removeAnSelectedImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CollectingDataEvent value)  collectingData,required TResult Function( StartPostEvent value)  startPost,required TResult Function( ResetCreatePostEvent value)  resetCreatePostEvent,required TResult Function( RemoveAnSelectedImageEvent value)  removeAnSelectedImage,}){
final _that = this;
switch (_that) {
case CollectingDataEvent():
return collectingData(_that);case StartPostEvent():
return startPost(_that);case ResetCreatePostEvent():
return resetCreatePostEvent(_that);case RemoveAnSelectedImageEvent():
return removeAnSelectedImage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CollectingDataEvent value)?  collectingData,TResult? Function( StartPostEvent value)?  startPost,TResult? Function( ResetCreatePostEvent value)?  resetCreatePostEvent,TResult? Function( RemoveAnSelectedImageEvent value)?  removeAnSelectedImage,}){
final _that = this;
switch (_that) {
case CollectingDataEvent() when collectingData != null:
return collectingData(_that);case StartPostEvent() when startPost != null:
return startPost(_that);case ResetCreatePostEvent() when resetCreatePostEvent != null:
return resetCreatePostEvent(_that);case RemoveAnSelectedImageEvent() when removeAnSelectedImage != null:
return removeAnSelectedImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  PostViewScope viewScope)?  collectingData,TResult Function()?  startPost,TResult Function()?  resetCreatePostEvent,TResult Function( AssetEntity media)?  removeAnSelectedImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CollectingDataEvent() when collectingData != null:
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.viewScope);case StartPostEvent() when startPost != null:
return startPost();case ResetCreatePostEvent() when resetCreatePostEvent != null:
return resetCreatePostEvent();case RemoveAnSelectedImageEvent() when removeAnSelectedImage != null:
return removeAnSelectedImage(_that.media);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  PostViewScope viewScope)  collectingData,required TResult Function()  startPost,required TResult Function()  resetCreatePostEvent,required TResult Function( AssetEntity media)  removeAnSelectedImage,}) {final _that = this;
switch (_that) {
case CollectingDataEvent():
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.viewScope);case StartPostEvent():
return startPost();case ResetCreatePostEvent():
return resetCreatePostEvent();case RemoveAnSelectedImageEvent():
return removeAnSelectedImage(_that.media);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  PostViewScope viewScope)?  collectingData,TResult? Function()?  startPost,TResult? Function()?  resetCreatePostEvent,TResult? Function( AssetEntity media)?  removeAnSelectedImage,}) {final _that = this;
switch (_that) {
case CollectingDataEvent() when collectingData != null:
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.viewScope);case StartPostEvent() when startPost != null:
return startPost();case ResetCreatePostEvent() when resetCreatePostEvent != null:
return resetCreatePostEvent();case RemoveAnSelectedImageEvent() when removeAnSelectedImage != null:
return removeAnSelectedImage(_that.media);case _:
  return null;

}
}

}

/// @nodoc


class CollectingDataEvent implements CreatePostEvent {
  const CollectingDataEvent({this.content, final  List<AssetEntity>? mediaAssetEntities, final  List<File?>? mediaFiles, this.viewScope = PostViewScope.public}): _mediaAssetEntities = mediaAssetEntities,_mediaFiles = mediaFiles;
  

 final  String? content;
 final  List<AssetEntity>? _mediaAssetEntities;
 List<AssetEntity>? get mediaAssetEntities {
  final value = _mediaAssetEntities;
  if (value == null) return null;
  if (_mediaAssetEntities is EqualUnmodifiableListView) return _mediaAssetEntities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<File?>? _mediaFiles;
 List<File?>? get mediaFiles {
  final value = _mediaFiles;
  if (value == null) return null;
  if (_mediaFiles is EqualUnmodifiableListView) return _mediaFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  PostViewScope viewScope;

/// Create a copy of CreatePostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectingDataEventCopyWith<CollectingDataEvent> get copyWith => _$CollectingDataEventCopyWithImpl<CollectingDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectingDataEvent&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._mediaAssetEntities, _mediaAssetEntities)&&const DeepCollectionEquality().equals(other._mediaFiles, _mediaFiles)&&(identical(other.viewScope, viewScope) || other.viewScope == viewScope));
}


@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_mediaAssetEntities),const DeepCollectionEquality().hash(_mediaFiles),viewScope);

@override
String toString() {
  return 'CreatePostEvent.collectingData(content: $content, mediaAssetEntities: $mediaAssetEntities, mediaFiles: $mediaFiles, viewScope: $viewScope)';
}


}

/// @nodoc
abstract mixin class $CollectingDataEventCopyWith<$Res> implements $CreatePostEventCopyWith<$Res> {
  factory $CollectingDataEventCopyWith(CollectingDataEvent value, $Res Function(CollectingDataEvent) _then) = _$CollectingDataEventCopyWithImpl;
@useResult
$Res call({
 String? content, List<AssetEntity>? mediaAssetEntities, List<File?>? mediaFiles, PostViewScope viewScope
});




}
/// @nodoc
class _$CollectingDataEventCopyWithImpl<$Res>
    implements $CollectingDataEventCopyWith<$Res> {
  _$CollectingDataEventCopyWithImpl(this._self, this._then);

  final CollectingDataEvent _self;
  final $Res Function(CollectingDataEvent) _then;

/// Create a copy of CreatePostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? mediaAssetEntities = freezed,Object? mediaFiles = freezed,Object? viewScope = null,}) {
  return _then(CollectingDataEvent(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetEntities: freezed == mediaAssetEntities ? _self._mediaAssetEntities : mediaAssetEntities // ignore: cast_nullable_to_non_nullable
as List<AssetEntity>?,mediaFiles: freezed == mediaFiles ? _self._mediaFiles : mediaFiles // ignore: cast_nullable_to_non_nullable
as List<File?>?,viewScope: null == viewScope ? _self.viewScope : viewScope // ignore: cast_nullable_to_non_nullable
as PostViewScope,
  ));
}


}

/// @nodoc


class StartPostEvent implements CreatePostEvent {
  const StartPostEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartPostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostEvent.startPost()';
}


}




/// @nodoc


class ResetCreatePostEvent implements CreatePostEvent {
  const ResetCreatePostEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetCreatePostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostEvent.resetCreatePostEvent()';
}


}




/// @nodoc


class RemoveAnSelectedImageEvent implements CreatePostEvent {
  const RemoveAnSelectedImageEvent(this.media);
  

 final  AssetEntity media;

/// Create a copy of CreatePostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveAnSelectedImageEventCopyWith<RemoveAnSelectedImageEvent> get copyWith => _$RemoveAnSelectedImageEventCopyWithImpl<RemoveAnSelectedImageEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveAnSelectedImageEvent&&(identical(other.media, media) || other.media == media));
}


@override
int get hashCode => Object.hash(runtimeType,media);

@override
String toString() {
  return 'CreatePostEvent.removeAnSelectedImage(media: $media)';
}


}

/// @nodoc
abstract mixin class $RemoveAnSelectedImageEventCopyWith<$Res> implements $CreatePostEventCopyWith<$Res> {
  factory $RemoveAnSelectedImageEventCopyWith(RemoveAnSelectedImageEvent value, $Res Function(RemoveAnSelectedImageEvent) _then) = _$RemoveAnSelectedImageEventCopyWithImpl;
@useResult
$Res call({
 AssetEntity media
});




}
/// @nodoc
class _$RemoveAnSelectedImageEventCopyWithImpl<$Res>
    implements $RemoveAnSelectedImageEventCopyWith<$Res> {
  _$RemoveAnSelectedImageEventCopyWithImpl(this._self, this._then);

  final RemoveAnSelectedImageEvent _self;
  final $Res Function(RemoveAnSelectedImageEvent) _then;

/// Create a copy of CreatePostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? media = null,}) {
  return _then(RemoveAnSelectedImageEvent(
null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as AssetEntity,
  ));
}


}

/// @nodoc
mixin _$CreatePostState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostState()';
}


}

/// @nodoc
class $CreatePostStateCopyWith<$Res>  {
$CreatePostStateCopyWith(CreatePostState _, $Res Function(CreatePostState) __);
}


/// Adds pattern-matching-related methods to [CreatePostState].
extension CreatePostStatePatterns on CreatePostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreatePostInitial value)?  initial,TResult Function( CreatePostLoading value)?  loading,TResult Function( CreatePostSuccess value)?  success,TResult Function( CreatePostError value)?  error,TResult Function( CreatePostCollectingData value)?  collectingData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreatePostInitial() when initial != null:
return initial(_that);case CreatePostLoading() when loading != null:
return loading(_that);case CreatePostSuccess() when success != null:
return success(_that);case CreatePostError() when error != null:
return error(_that);case CreatePostCollectingData() when collectingData != null:
return collectingData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreatePostInitial value)  initial,required TResult Function( CreatePostLoading value)  loading,required TResult Function( CreatePostSuccess value)  success,required TResult Function( CreatePostError value)  error,required TResult Function( CreatePostCollectingData value)  collectingData,}){
final _that = this;
switch (_that) {
case CreatePostInitial():
return initial(_that);case CreatePostLoading():
return loading(_that);case CreatePostSuccess():
return success(_that);case CreatePostError():
return error(_that);case CreatePostCollectingData():
return collectingData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreatePostInitial value)?  initial,TResult? Function( CreatePostLoading value)?  loading,TResult? Function( CreatePostSuccess value)?  success,TResult? Function( CreatePostError value)?  error,TResult? Function( CreatePostCollectingData value)?  collectingData,}){
final _that = this;
switch (_that) {
case CreatePostInitial() when initial != null:
return initial(_that);case CreatePostLoading() when loading != null:
return loading(_that);case CreatePostSuccess() when success != null:
return success(_that);case CreatePostError() when error != null:
return error(_that);case CreatePostCollectingData() when collectingData != null:
return collectingData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,TResult Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  List<Uint8List>? cachedThumbnails,  PostViewScope viewScope)?  collectingData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreatePostInitial() when initial != null:
return initial();case CreatePostLoading() when loading != null:
return loading();case CreatePostSuccess() when success != null:
return success();case CreatePostError() when error != null:
return error(_that.message);case CreatePostCollectingData() when collectingData != null:
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.cachedThumbnails,_that.viewScope);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,required TResult Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  List<Uint8List>? cachedThumbnails,  PostViewScope viewScope)  collectingData,}) {final _that = this;
switch (_that) {
case CreatePostInitial():
return initial();case CreatePostLoading():
return loading();case CreatePostSuccess():
return success();case CreatePostError():
return error(_that.message);case CreatePostCollectingData():
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.cachedThumbnails,_that.viewScope);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,TResult? Function( String? content,  List<AssetEntity>? mediaAssetEntities,  List<File?>? mediaFiles,  List<Uint8List>? cachedThumbnails,  PostViewScope viewScope)?  collectingData,}) {final _that = this;
switch (_that) {
case CreatePostInitial() when initial != null:
return initial();case CreatePostLoading() when loading != null:
return loading();case CreatePostSuccess() when success != null:
return success();case CreatePostError() when error != null:
return error(_that.message);case CreatePostCollectingData() when collectingData != null:
return collectingData(_that.content,_that.mediaAssetEntities,_that.mediaFiles,_that.cachedThumbnails,_that.viewScope);case _:
  return null;

}
}

}

/// @nodoc


class CreatePostInitial implements CreatePostState {
  const CreatePostInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostState.initial()';
}


}




/// @nodoc


class CreatePostLoading implements CreatePostState {
  const CreatePostLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostState.loading()';
}


}




/// @nodoc


class CreatePostSuccess implements CreatePostState {
  const CreatePostSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreatePostState.success()';
}


}




/// @nodoc


class CreatePostError implements CreatePostState {
  const CreatePostError({required this.message});
  

 final  String message;

/// Create a copy of CreatePostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostErrorCopyWith<CreatePostError> get copyWith => _$CreatePostErrorCopyWithImpl<CreatePostError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreatePostState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreatePostErrorCopyWith<$Res> implements $CreatePostStateCopyWith<$Res> {
  factory $CreatePostErrorCopyWith(CreatePostError value, $Res Function(CreatePostError) _then) = _$CreatePostErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreatePostErrorCopyWithImpl<$Res>
    implements $CreatePostErrorCopyWith<$Res> {
  _$CreatePostErrorCopyWithImpl(this._self, this._then);

  final CreatePostError _self;
  final $Res Function(CreatePostError) _then;

/// Create a copy of CreatePostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreatePostError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreatePostCollectingData implements CreatePostState {
  const CreatePostCollectingData({this.content, final  List<AssetEntity>? mediaAssetEntities, final  List<File?>? mediaFiles, final  List<Uint8List>? cachedThumbnails, this.viewScope = PostViewScope.public}): _mediaAssetEntities = mediaAssetEntities,_mediaFiles = mediaFiles,_cachedThumbnails = cachedThumbnails;
  

 final  String? content;
 final  List<AssetEntity>? _mediaAssetEntities;
 List<AssetEntity>? get mediaAssetEntities {
  final value = _mediaAssetEntities;
  if (value == null) return null;
  if (_mediaAssetEntities is EqualUnmodifiableListView) return _mediaAssetEntities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<File?>? _mediaFiles;
 List<File?>? get mediaFiles {
  final value = _mediaFiles;
  if (value == null) return null;
  if (_mediaFiles is EqualUnmodifiableListView) return _mediaFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Uint8List>? _cachedThumbnails;
 List<Uint8List>? get cachedThumbnails {
  final value = _cachedThumbnails;
  if (value == null) return null;
  if (_cachedThumbnails is EqualUnmodifiableListView) return _cachedThumbnails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  PostViewScope viewScope;

/// Create a copy of CreatePostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostCollectingDataCopyWith<CreatePostCollectingData> get copyWith => _$CreatePostCollectingDataCopyWithImpl<CreatePostCollectingData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostCollectingData&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._mediaAssetEntities, _mediaAssetEntities)&&const DeepCollectionEquality().equals(other._mediaFiles, _mediaFiles)&&const DeepCollectionEquality().equals(other._cachedThumbnails, _cachedThumbnails)&&(identical(other.viewScope, viewScope) || other.viewScope == viewScope));
}


@override
int get hashCode => Object.hash(runtimeType,content,const DeepCollectionEquality().hash(_mediaAssetEntities),const DeepCollectionEquality().hash(_mediaFiles),const DeepCollectionEquality().hash(_cachedThumbnails),viewScope);

@override
String toString() {
  return 'CreatePostState.collectingData(content: $content, mediaAssetEntities: $mediaAssetEntities, mediaFiles: $mediaFiles, cachedThumbnails: $cachedThumbnails, viewScope: $viewScope)';
}


}

/// @nodoc
abstract mixin class $CreatePostCollectingDataCopyWith<$Res> implements $CreatePostStateCopyWith<$Res> {
  factory $CreatePostCollectingDataCopyWith(CreatePostCollectingData value, $Res Function(CreatePostCollectingData) _then) = _$CreatePostCollectingDataCopyWithImpl;
@useResult
$Res call({
 String? content, List<AssetEntity>? mediaAssetEntities, List<File?>? mediaFiles, List<Uint8List>? cachedThumbnails, PostViewScope viewScope
});




}
/// @nodoc
class _$CreatePostCollectingDataCopyWithImpl<$Res>
    implements $CreatePostCollectingDataCopyWith<$Res> {
  _$CreatePostCollectingDataCopyWithImpl(this._self, this._then);

  final CreatePostCollectingData _self;
  final $Res Function(CreatePostCollectingData) _then;

/// Create a copy of CreatePostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? mediaAssetEntities = freezed,Object? mediaFiles = freezed,Object? cachedThumbnails = freezed,Object? viewScope = null,}) {
  return _then(CreatePostCollectingData(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaAssetEntities: freezed == mediaAssetEntities ? _self._mediaAssetEntities : mediaAssetEntities // ignore: cast_nullable_to_non_nullable
as List<AssetEntity>?,mediaFiles: freezed == mediaFiles ? _self._mediaFiles : mediaFiles // ignore: cast_nullable_to_non_nullable
as List<File?>?,cachedThumbnails: freezed == cachedThumbnails ? _self._cachedThumbnails : cachedThumbnails // ignore: cast_nullable_to_non_nullable
as List<Uint8List>?,viewScope: null == viewScope ? _self.viewScope : viewScope // ignore: cast_nullable_to_non_nullable
as PostViewScope,
  ));
}


}

// dart format on
