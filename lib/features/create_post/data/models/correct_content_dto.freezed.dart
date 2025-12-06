// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correct_content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CorrectContentDto {

 String get original; String get corrected; String get diff; int get status;@JsonKey(name: 'user_id') String get userId;
/// Create a copy of CorrectContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectContentDtoCopyWith<CorrectContentDto> get copyWith => _$CorrectContentDtoCopyWithImpl<CorrectContentDto>(this as CorrectContentDto, _$identity);

  /// Serializes this CorrectContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectContentDto&&(identical(other.original, original) || other.original == original)&&(identical(other.corrected, corrected) || other.corrected == corrected)&&(identical(other.diff, diff) || other.diff == diff)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,original,corrected,diff,status,userId);

@override
String toString() {
  return 'CorrectContentDto(original: $original, corrected: $corrected, diff: $diff, status: $status, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CorrectContentDtoCopyWith<$Res>  {
  factory $CorrectContentDtoCopyWith(CorrectContentDto value, $Res Function(CorrectContentDto) _then) = _$CorrectContentDtoCopyWithImpl;
@useResult
$Res call({
 String original, String corrected, String diff, int status,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class _$CorrectContentDtoCopyWithImpl<$Res>
    implements $CorrectContentDtoCopyWith<$Res> {
  _$CorrectContentDtoCopyWithImpl(this._self, this._then);

  final CorrectContentDto _self;
  final $Res Function(CorrectContentDto) _then;

/// Create a copy of CorrectContentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? original = null,Object? corrected = null,Object? diff = null,Object? status = null,Object? userId = null,}) {
  return _then(_self.copyWith(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,corrected: null == corrected ? _self.corrected : corrected // ignore: cast_nullable_to_non_nullable
as String,diff: null == diff ? _self.diff : diff // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrectContentDto].
extension CorrectContentDtoPatterns on CorrectContentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectContentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectContentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectContentDto value)  $default,){
final _that = this;
switch (_that) {
case _CorrectContentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectContentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectContentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String original,  String corrected,  String diff,  int status, @JsonKey(name: 'user_id')  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectContentDto() when $default != null:
return $default(_that.original,_that.corrected,_that.diff,_that.status,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String original,  String corrected,  String diff,  int status, @JsonKey(name: 'user_id')  String userId)  $default,) {final _that = this;
switch (_that) {
case _CorrectContentDto():
return $default(_that.original,_that.corrected,_that.diff,_that.status,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String original,  String corrected,  String diff,  int status, @JsonKey(name: 'user_id')  String userId)?  $default,) {final _that = this;
switch (_that) {
case _CorrectContentDto() when $default != null:
return $default(_that.original,_that.corrected,_that.diff,_that.status,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CorrectContentDto extends CorrectContentDto {
   _CorrectContentDto({required this.original, required this.corrected, required this.diff, required this.status, @JsonKey(name: 'user_id') required this.userId}): super._();
  factory _CorrectContentDto.fromJson(Map<String, dynamic> json) => _$CorrectContentDtoFromJson(json);

@override final  String original;
@override final  String corrected;
@override final  String diff;
@override final  int status;
@override@JsonKey(name: 'user_id') final  String userId;

/// Create a copy of CorrectContentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectContentDtoCopyWith<_CorrectContentDto> get copyWith => __$CorrectContentDtoCopyWithImpl<_CorrectContentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectContentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectContentDto&&(identical(other.original, original) || other.original == original)&&(identical(other.corrected, corrected) || other.corrected == corrected)&&(identical(other.diff, diff) || other.diff == diff)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,original,corrected,diff,status,userId);

@override
String toString() {
  return 'CorrectContentDto(original: $original, corrected: $corrected, diff: $diff, status: $status, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CorrectContentDtoCopyWith<$Res> implements $CorrectContentDtoCopyWith<$Res> {
  factory _$CorrectContentDtoCopyWith(_CorrectContentDto value, $Res Function(_CorrectContentDto) _then) = __$CorrectContentDtoCopyWithImpl;
@override @useResult
$Res call({
 String original, String corrected, String diff, int status,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class __$CorrectContentDtoCopyWithImpl<$Res>
    implements _$CorrectContentDtoCopyWith<$Res> {
  __$CorrectContentDtoCopyWithImpl(this._self, this._then);

  final _CorrectContentDto _self;
  final $Res Function(_CorrectContentDto) _then;

/// Create a copy of CorrectContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? original = null,Object? corrected = null,Object? diff = null,Object? status = null,Object? userId = null,}) {
  return _then(_CorrectContentDto(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,corrected: null == corrected ? _self.corrected : corrected // ignore: cast_nullable_to_non_nullable
as String,diff: null == diff ? _self.diff : diff // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
