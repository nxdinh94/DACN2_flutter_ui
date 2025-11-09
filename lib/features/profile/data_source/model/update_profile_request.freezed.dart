// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileRequest {

 String? get username; String? get fullName; String? get phoneNumber; String? get bio; String? get avatar; String? get cover; String? get country; DateTime? get birthday; bool? get isProtected; String? get languageLevel; String? get nativeLanguage; String? get targetLanguage;
/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileRequestCopyWith<UpdateProfileRequest> get copyWith => _$UpdateProfileRequestCopyWithImpl<UpdateProfileRequest>(this as UpdateProfileRequest, _$identity);

  /// Serializes this UpdateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,fullName,phoneNumber,bio,avatar,cover,country,birthday,isProtected,languageLevel,nativeLanguage,targetLanguage);

@override
String toString() {
  return 'UpdateProfileRequest(username: $username, fullName: $fullName, phoneNumber: $phoneNumber, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, isProtected: $isProtected, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileRequestCopyWith<$Res>  {
  factory $UpdateProfileRequestCopyWith(UpdateProfileRequest value, $Res Function(UpdateProfileRequest) _then) = _$UpdateProfileRequestCopyWithImpl;
@useResult
$Res call({
 String? username, String? fullName, String? phoneNumber, String? bio, String? avatar, String? cover, String? country, DateTime? birthday, bool? isProtected, String? languageLevel, String? nativeLanguage, String? targetLanguage
});




}
/// @nodoc
class _$UpdateProfileRequestCopyWithImpl<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  _$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final UpdateProfileRequest _self;
  final $Res Function(UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? fullName = freezed,Object? phoneNumber = freezed,Object? bio = freezed,Object? avatar = freezed,Object? cover = freezed,Object? country = freezed,Object? birthday = freezed,Object? isProtected = freezed,Object? languageLevel = freezed,Object? nativeLanguage = freezed,Object? targetLanguage = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as DateTime?,isProtected: freezed == isProtected ? _self.isProtected : isProtected // ignore: cast_nullable_to_non_nullable
as bool?,languageLevel: freezed == languageLevel ? _self.languageLevel : languageLevel // ignore: cast_nullable_to_non_nullable
as String?,nativeLanguage: freezed == nativeLanguage ? _self.nativeLanguage : nativeLanguage // ignore: cast_nullable_to_non_nullable
as String?,targetLanguage: freezed == targetLanguage ? _self.targetLanguage : targetLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileRequest].
extension UpdateProfileRequestPatterns on UpdateProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? username,  String? fullName,  String? phoneNumber,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  bool? isProtected,  String? languageLevel,  String? nativeLanguage,  String? targetLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.username,_that.fullName,_that.phoneNumber,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.isProtected,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? username,  String? fullName,  String? phoneNumber,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  bool? isProtected,  String? languageLevel,  String? nativeLanguage,  String? targetLanguage)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest():
return $default(_that.username,_that.fullName,_that.phoneNumber,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.isProtected,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? username,  String? fullName,  String? phoneNumber,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  bool? isProtected,  String? languageLevel,  String? nativeLanguage,  String? targetLanguage)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.username,_that.fullName,_that.phoneNumber,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.isProtected,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileRequest implements UpdateProfileRequest {
   _UpdateProfileRequest({this.username, this.fullName, this.phoneNumber, this.bio, this.avatar, this.cover, this.country, this.birthday, this.isProtected, this.languageLevel, this.nativeLanguage, this.targetLanguage});
  factory _UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

@override final  String? username;
@override final  String? fullName;
@override final  String? phoneNumber;
@override final  String? bio;
@override final  String? avatar;
@override final  String? cover;
@override final  String? country;
@override final  DateTime? birthday;
@override final  bool? isProtected;
@override final  String? languageLevel;
@override final  String? nativeLanguage;
@override final  String? targetLanguage;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileRequestCopyWith<_UpdateProfileRequest> get copyWith => __$UpdateProfileRequestCopyWithImpl<_UpdateProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,fullName,phoneNumber,bio,avatar,cover,country,birthday,isProtected,languageLevel,nativeLanguage,targetLanguage);

@override
String toString() {
  return 'UpdateProfileRequest(username: $username, fullName: $fullName, phoneNumber: $phoneNumber, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, isProtected: $isProtected, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRequestCopyWith<$Res> implements $UpdateProfileRequestCopyWith<$Res> {
  factory _$UpdateProfileRequestCopyWith(_UpdateProfileRequest value, $Res Function(_UpdateProfileRequest) _then) = __$UpdateProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? fullName, String? phoneNumber, String? bio, String? avatar, String? cover, String? country, DateTime? birthday, bool? isProtected, String? languageLevel, String? nativeLanguage, String? targetLanguage
});




}
/// @nodoc
class __$UpdateProfileRequestCopyWithImpl<$Res>
    implements _$UpdateProfileRequestCopyWith<$Res> {
  __$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final _UpdateProfileRequest _self;
  final $Res Function(_UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? fullName = freezed,Object? phoneNumber = freezed,Object? bio = freezed,Object? avatar = freezed,Object? cover = freezed,Object? country = freezed,Object? birthday = freezed,Object? isProtected = freezed,Object? languageLevel = freezed,Object? nativeLanguage = freezed,Object? targetLanguage = freezed,}) {
  return _then(_UpdateProfileRequest(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as DateTime?,isProtected: freezed == isProtected ? _self.isProtected : isProtected // ignore: cast_nullable_to_non_nullable
as bool?,languageLevel: freezed == languageLevel ? _self.languageLevel : languageLevel // ignore: cast_nullable_to_non_nullable
as String?,nativeLanguage: freezed == nativeLanguage ? _self.nativeLanguage : nativeLanguage // ignore: cast_nullable_to_non_nullable
as String?,targetLanguage: freezed == targetLanguage ? _self.targetLanguage : targetLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
