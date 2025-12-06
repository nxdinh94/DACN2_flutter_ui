// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'correct_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CorrectContentEntity {

 String get original; String get corrected; String get diff;
/// Create a copy of CorrectContentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectContentEntityCopyWith<CorrectContentEntity> get copyWith => _$CorrectContentEntityCopyWithImpl<CorrectContentEntity>(this as CorrectContentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectContentEntity&&(identical(other.original, original) || other.original == original)&&(identical(other.corrected, corrected) || other.corrected == corrected)&&(identical(other.diff, diff) || other.diff == diff));
}


@override
int get hashCode => Object.hash(runtimeType,original,corrected,diff);

@override
String toString() {
  return 'CorrectContentEntity(original: $original, corrected: $corrected, diff: $diff)';
}


}

/// @nodoc
abstract mixin class $CorrectContentEntityCopyWith<$Res>  {
  factory $CorrectContentEntityCopyWith(CorrectContentEntity value, $Res Function(CorrectContentEntity) _then) = _$CorrectContentEntityCopyWithImpl;
@useResult
$Res call({
 String original, String corrected, String diff
});




}
/// @nodoc
class _$CorrectContentEntityCopyWithImpl<$Res>
    implements $CorrectContentEntityCopyWith<$Res> {
  _$CorrectContentEntityCopyWithImpl(this._self, this._then);

  final CorrectContentEntity _self;
  final $Res Function(CorrectContentEntity) _then;

/// Create a copy of CorrectContentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? original = null,Object? corrected = null,Object? diff = null,}) {
  return _then(_self.copyWith(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,corrected: null == corrected ? _self.corrected : corrected // ignore: cast_nullable_to_non_nullable
as String,diff: null == diff ? _self.diff : diff // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CorrectContentEntity].
extension CorrectContentEntityPatterns on CorrectContentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CorrectContentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CorrectContentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CorrectContentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CorrectContentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CorrectContentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CorrectContentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String original,  String corrected,  String diff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CorrectContentEntity() when $default != null:
return $default(_that.original,_that.corrected,_that.diff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String original,  String corrected,  String diff)  $default,) {final _that = this;
switch (_that) {
case _CorrectContentEntity():
return $default(_that.original,_that.corrected,_that.diff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String original,  String corrected,  String diff)?  $default,) {final _that = this;
switch (_that) {
case _CorrectContentEntity() when $default != null:
return $default(_that.original,_that.corrected,_that.diff);case _:
  return null;

}
}

}

/// @nodoc


class _CorrectContentEntity implements CorrectContentEntity {
   _CorrectContentEntity({required this.original, required this.corrected, required this.diff});
  

@override final  String original;
@override final  String corrected;
@override final  String diff;

/// Create a copy of CorrectContentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectContentEntityCopyWith<_CorrectContentEntity> get copyWith => __$CorrectContentEntityCopyWithImpl<_CorrectContentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectContentEntity&&(identical(other.original, original) || other.original == original)&&(identical(other.corrected, corrected) || other.corrected == corrected)&&(identical(other.diff, diff) || other.diff == diff));
}


@override
int get hashCode => Object.hash(runtimeType,original,corrected,diff);

@override
String toString() {
  return 'CorrectContentEntity(original: $original, corrected: $corrected, diff: $diff)';
}


}

/// @nodoc
abstract mixin class _$CorrectContentEntityCopyWith<$Res> implements $CorrectContentEntityCopyWith<$Res> {
  factory _$CorrectContentEntityCopyWith(_CorrectContentEntity value, $Res Function(_CorrectContentEntity) _then) = __$CorrectContentEntityCopyWithImpl;
@override @useResult
$Res call({
 String original, String corrected, String diff
});




}
/// @nodoc
class __$CorrectContentEntityCopyWithImpl<$Res>
    implements _$CorrectContentEntityCopyWith<$Res> {
  __$CorrectContentEntityCopyWithImpl(this._self, this._then);

  final _CorrectContentEntity _self;
  final $Res Function(_CorrectContentEntity) _then;

/// Create a copy of CorrectContentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? original = null,Object? corrected = null,Object? diff = null,}) {
  return _then(_CorrectContentEntity(
original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,corrected: null == corrected ? _self.corrected : corrected // ignore: cast_nullable_to_non_nullable
as String,diff: null == diff ? _self.diff : diff // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
