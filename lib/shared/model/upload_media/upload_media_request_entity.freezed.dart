// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_media_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadMediaRequestEntity {

 String get filePath; int? get ordinal;
/// Create a copy of UploadMediaRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMediaRequestEntityCopyWith<UploadMediaRequestEntity> get copyWith => _$UploadMediaRequestEntityCopyWithImpl<UploadMediaRequestEntity>(this as UploadMediaRequestEntity, _$identity);

  /// Serializes this UploadMediaRequestEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMediaRequestEntity&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,ordinal);

@override
String toString() {
  return 'UploadMediaRequestEntity(filePath: $filePath, ordinal: $ordinal)';
}


}

/// @nodoc
abstract mixin class $UploadMediaRequestEntityCopyWith<$Res>  {
  factory $UploadMediaRequestEntityCopyWith(UploadMediaRequestEntity value, $Res Function(UploadMediaRequestEntity) _then) = _$UploadMediaRequestEntityCopyWithImpl;
@useResult
$Res call({
 String filePath, int? ordinal
});




}
/// @nodoc
class _$UploadMediaRequestEntityCopyWithImpl<$Res>
    implements $UploadMediaRequestEntityCopyWith<$Res> {
  _$UploadMediaRequestEntityCopyWithImpl(this._self, this._then);

  final UploadMediaRequestEntity _self;
  final $Res Function(UploadMediaRequestEntity) _then;

/// Create a copy of UploadMediaRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = null,Object? ordinal = freezed,}) {
  return _then(_self.copyWith(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,ordinal: freezed == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadMediaRequestEntity].
extension UploadMediaRequestEntityPatterns on UploadMediaRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadMediaRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadMediaRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadMediaRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _UploadMediaRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadMediaRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UploadMediaRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String filePath,  int? ordinal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadMediaRequestEntity() when $default != null:
return $default(_that.filePath,_that.ordinal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String filePath,  int? ordinal)  $default,) {final _that = this;
switch (_that) {
case _UploadMediaRequestEntity():
return $default(_that.filePath,_that.ordinal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String filePath,  int? ordinal)?  $default,) {final _that = this;
switch (_that) {
case _UploadMediaRequestEntity() when $default != null:
return $default(_that.filePath,_that.ordinal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadMediaRequestEntity extends UploadMediaRequestEntity {
   _UploadMediaRequestEntity({required this.filePath, this.ordinal}): super._();
  factory _UploadMediaRequestEntity.fromJson(Map<String, dynamic> json) => _$UploadMediaRequestEntityFromJson(json);

@override final  String filePath;
@override final  int? ordinal;

/// Create a copy of UploadMediaRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadMediaRequestEntityCopyWith<_UploadMediaRequestEntity> get copyWith => __$UploadMediaRequestEntityCopyWithImpl<_UploadMediaRequestEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadMediaRequestEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadMediaRequestEntity&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,filePath,ordinal);

@override
String toString() {
  return 'UploadMediaRequestEntity(filePath: $filePath, ordinal: $ordinal)';
}


}

/// @nodoc
abstract mixin class _$UploadMediaRequestEntityCopyWith<$Res> implements $UploadMediaRequestEntityCopyWith<$Res> {
  factory _$UploadMediaRequestEntityCopyWith(_UploadMediaRequestEntity value, $Res Function(_UploadMediaRequestEntity) _then) = __$UploadMediaRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String filePath, int? ordinal
});




}
/// @nodoc
class __$UploadMediaRequestEntityCopyWithImpl<$Res>
    implements _$UploadMediaRequestEntityCopyWith<$Res> {
  __$UploadMediaRequestEntityCopyWithImpl(this._self, this._then);

  final _UploadMediaRequestEntity _self;
  final $Res Function(_UploadMediaRequestEntity) _then;

/// Create a copy of UploadMediaRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? ordinal = freezed,}) {
  return _then(_UploadMediaRequestEntity(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,ordinal: freezed == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
