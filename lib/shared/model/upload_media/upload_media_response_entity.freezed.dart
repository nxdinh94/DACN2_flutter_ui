// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadMediaResponseEntity {

 String get id; String get url; String get type; int get ordinal; String? get metadata;
/// Create a copy of UploadMediaResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMediaResponseEntityCopyWith<UploadMediaResponseEntity> get copyWith => _$UploadMediaResponseEntityCopyWithImpl<UploadMediaResponseEntity>(this as UploadMediaResponseEntity, _$identity);

  /// Serializes this UploadMediaResponseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMediaResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'UploadMediaResponseEntity(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $UploadMediaResponseEntityCopyWith<$Res>  {
  factory $UploadMediaResponseEntityCopyWith(UploadMediaResponseEntity value, $Res Function(UploadMediaResponseEntity) _then) = _$UploadMediaResponseEntityCopyWithImpl;
@useResult
$Res call({
 String id, String url, String type, int ordinal, String? metadata
});




}
/// @nodoc
class _$UploadMediaResponseEntityCopyWithImpl<$Res>
    implements $UploadMediaResponseEntityCopyWith<$Res> {
  _$UploadMediaResponseEntityCopyWithImpl(this._self, this._then);

  final UploadMediaResponseEntity _self;
  final $Res Function(UploadMediaResponseEntity) _then;

/// Create a copy of UploadMediaResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadMediaResponseEntity].
extension UploadMediaResponseEntityPatterns on UploadMediaResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadMediaResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadMediaResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadMediaResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _UploadMediaResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadMediaResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UploadMediaResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  String? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadMediaResponseEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  String? metadata)  $default,) {final _that = this;
switch (_that) {
case _UploadMediaResponseEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String type,  int ordinal,  String? metadata)?  $default,) {final _that = this;
switch (_that) {
case _UploadMediaResponseEntity() when $default != null:
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadMediaResponseEntity implements UploadMediaResponseEntity {
   _UploadMediaResponseEntity({required this.id, required this.url, required this.type, required this.ordinal, this.metadata});
  factory _UploadMediaResponseEntity.fromJson(Map<String, dynamic> json) => _$UploadMediaResponseEntityFromJson(json);

@override final  String id;
@override final  String url;
@override final  String type;
@override final  int ordinal;
@override final  String? metadata;

/// Create a copy of UploadMediaResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadMediaResponseEntityCopyWith<_UploadMediaResponseEntity> get copyWith => __$UploadMediaResponseEntityCopyWithImpl<_UploadMediaResponseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadMediaResponseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadMediaResponseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'UploadMediaResponseEntity(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$UploadMediaResponseEntityCopyWith<$Res> implements $UploadMediaResponseEntityCopyWith<$Res> {
  factory _$UploadMediaResponseEntityCopyWith(_UploadMediaResponseEntity value, $Res Function(_UploadMediaResponseEntity) _then) = __$UploadMediaResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String type, int ordinal, String? metadata
});




}
/// @nodoc
class __$UploadMediaResponseEntityCopyWithImpl<$Res>
    implements _$UploadMediaResponseEntityCopyWith<$Res> {
  __$UploadMediaResponseEntityCopyWithImpl(this._self, this._then);

  final _UploadMediaResponseEntity _self;
  final $Res Function(_UploadMediaResponseEntity) _then;

/// Create a copy of UploadMediaResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_UploadMediaResponseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
