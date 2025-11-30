// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadMediaResponseDto {

 String get id; String get url; String get type; int get ordinal; MediaMetadataDto? get metadata;
/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMediaResponseDtoCopyWith<UploadMediaResponseDto> get copyWith => _$UploadMediaResponseDtoCopyWithImpl<UploadMediaResponseDto>(this as UploadMediaResponseDto, _$identity);

  /// Serializes this UploadMediaResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMediaResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'UploadMediaResponseDto(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $UploadMediaResponseDtoCopyWith<$Res>  {
  factory $UploadMediaResponseDtoCopyWith(UploadMediaResponseDto value, $Res Function(UploadMediaResponseDto) _then) = _$UploadMediaResponseDtoCopyWithImpl;
@useResult
$Res call({
 String id, String url, String type, int ordinal, MediaMetadataDto? metadata
});


$MediaMetadataDtoCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$UploadMediaResponseDtoCopyWithImpl<$Res>
    implements $UploadMediaResponseDtoCopyWith<$Res> {
  _$UploadMediaResponseDtoCopyWithImpl(this._self, this._then);

  final UploadMediaResponseDto _self;
  final $Res Function(UploadMediaResponseDto) _then;

/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataDto?,
  ));
}
/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataDtoCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataDtoCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadMediaResponseDto].
extension UploadMediaResponseDtoPatterns on UploadMediaResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadMediaResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadMediaResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadMediaResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _UploadMediaResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadMediaResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _UploadMediaResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  MediaMetadataDto? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadMediaResponseDto() when $default != null:
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  MediaMetadataDto? metadata)  $default,) {final _that = this;
switch (_that) {
case _UploadMediaResponseDto():
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String type,  int ordinal,  MediaMetadataDto? metadata)?  $default,) {final _that = this;
switch (_that) {
case _UploadMediaResponseDto() when $default != null:
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadMediaResponseDto implements UploadMediaResponseDto {
   _UploadMediaResponseDto({required this.id, required this.url, required this.type, required this.ordinal, this.metadata});
  factory _UploadMediaResponseDto.fromJson(Map<String, dynamic> json) => _$UploadMediaResponseDtoFromJson(json);

@override final  String id;
@override final  String url;
@override final  String type;
@override final  int ordinal;
@override final  MediaMetadataDto? metadata;

/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadMediaResponseDtoCopyWith<_UploadMediaResponseDto> get copyWith => __$UploadMediaResponseDtoCopyWithImpl<_UploadMediaResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadMediaResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadMediaResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'UploadMediaResponseDto(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$UploadMediaResponseDtoCopyWith<$Res> implements $UploadMediaResponseDtoCopyWith<$Res> {
  factory _$UploadMediaResponseDtoCopyWith(_UploadMediaResponseDto value, $Res Function(_UploadMediaResponseDto) _then) = __$UploadMediaResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String type, int ordinal, MediaMetadataDto? metadata
});


@override $MediaMetadataDtoCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$UploadMediaResponseDtoCopyWithImpl<$Res>
    implements _$UploadMediaResponseDtoCopyWith<$Res> {
  __$UploadMediaResponseDtoCopyWithImpl(this._self, this._then);

  final _UploadMediaResponseDto _self;
  final $Res Function(_UploadMediaResponseDto) _then;

/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_UploadMediaResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataDto?,
  ));
}

/// Create a copy of UploadMediaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataDtoCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataDtoCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$MediaMetadataDto {

 String? get mimetype; String? get fileName; int? get fileSize; String? get uploadedAt;
/// Create a copy of MediaMetadataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaMetadataDtoCopyWith<MediaMetadataDto> get copyWith => _$MediaMetadataDtoCopyWithImpl<MediaMetadataDto>(this as MediaMetadataDto, _$identity);

  /// Serializes this MediaMetadataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaMetadataDto&&(identical(other.mimetype, mimetype) || other.mimetype == mimetype)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimetype,fileName,fileSize,uploadedAt);

@override
String toString() {
  return 'MediaMetadataDto(mimetype: $mimetype, fileName: $fileName, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $MediaMetadataDtoCopyWith<$Res>  {
  factory $MediaMetadataDtoCopyWith(MediaMetadataDto value, $Res Function(MediaMetadataDto) _then) = _$MediaMetadataDtoCopyWithImpl;
@useResult
$Res call({
 String? mimetype, String? fileName, int? fileSize, String? uploadedAt
});




}
/// @nodoc
class _$MediaMetadataDtoCopyWithImpl<$Res>
    implements $MediaMetadataDtoCopyWith<$Res> {
  _$MediaMetadataDtoCopyWithImpl(this._self, this._then);

  final MediaMetadataDto _self;
  final $Res Function(MediaMetadataDto) _then;

/// Create a copy of MediaMetadataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mimetype = freezed,Object? fileName = freezed,Object? fileSize = freezed,Object? uploadedAt = freezed,}) {
  return _then(_self.copyWith(
mimetype: freezed == mimetype ? _self.mimetype : mimetype // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaMetadataDto].
extension MediaMetadataDtoPatterns on MediaMetadataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaMetadataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaMetadataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaMetadataDto value)  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaMetadataDto value)?  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mimetype,  String? fileName,  int? fileSize,  String? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaMetadataDto() when $default != null:
return $default(_that.mimetype,_that.fileName,_that.fileSize,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mimetype,  String? fileName,  int? fileSize,  String? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _MediaMetadataDto():
return $default(_that.mimetype,_that.fileName,_that.fileSize,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mimetype,  String? fileName,  int? fileSize,  String? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _MediaMetadataDto() when $default != null:
return $default(_that.mimetype,_that.fileName,_that.fileSize,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaMetadataDto implements MediaMetadataDto {
   _MediaMetadataDto({this.mimetype, this.fileName, this.fileSize, this.uploadedAt});
  factory _MediaMetadataDto.fromJson(Map<String, dynamic> json) => _$MediaMetadataDtoFromJson(json);

@override final  String? mimetype;
@override final  String? fileName;
@override final  int? fileSize;
@override final  String? uploadedAt;

/// Create a copy of MediaMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaMetadataDtoCopyWith<_MediaMetadataDto> get copyWith => __$MediaMetadataDtoCopyWithImpl<_MediaMetadataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaMetadataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaMetadataDto&&(identical(other.mimetype, mimetype) || other.mimetype == mimetype)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mimetype,fileName,fileSize,uploadedAt);

@override
String toString() {
  return 'MediaMetadataDto(mimetype: $mimetype, fileName: $fileName, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$MediaMetadataDtoCopyWith<$Res> implements $MediaMetadataDtoCopyWith<$Res> {
  factory _$MediaMetadataDtoCopyWith(_MediaMetadataDto value, $Res Function(_MediaMetadataDto) _then) = __$MediaMetadataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? mimetype, String? fileName, int? fileSize, String? uploadedAt
});




}
/// @nodoc
class __$MediaMetadataDtoCopyWithImpl<$Res>
    implements _$MediaMetadataDtoCopyWith<$Res> {
  __$MediaMetadataDtoCopyWithImpl(this._self, this._then);

  final _MediaMetadataDto _self;
  final $Res Function(_MediaMetadataDto) _then;

/// Create a copy of MediaMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mimetype = freezed,Object? fileName = freezed,Object? fileSize = freezed,Object? uploadedAt = freezed,}) {
  return _then(_MediaMetadataDto(
mimetype: freezed == mimetype ? _self.mimetype : mimetype // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
