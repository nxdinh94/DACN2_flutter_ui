// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoEntity {

 String get id; String get email; String get username; String? get phoneNumber; String get status; int get roleId; bool get isProtected; DateTime? get verifiedAt; String? get pinnedPostId; String get fullName; String? get bio; String? get avatar; String? get cover; String? get country; DateTime? get birthday; String get languageLevel; String get nativeLanguage; String get targetLanguage; int get currentStreak; int get totalStudyTime; int get level; int get experiencePoints; bool get isVerified; DateTime get lastActiveAt; String? get createdById; String? get updatedById; DateTime? get deletedAt; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoEntityCopyWith<UserInfoEntity> get copyWith => _$UserInfoEntityCopyWithImpl<UserInfoEntity>(this as UserInfoEntity, _$identity);

  /// Serializes this UserInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.pinnedPostId, pinnedPostId) || other.pinnedPostId == pinnedPostId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.totalStudyTime, totalStudyTime) || other.totalStudyTime == totalStudyTime)&&(identical(other.level, level) || other.level == level)&&(identical(other.experiencePoints, experiencePoints) || other.experiencePoints == experiencePoints)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,phoneNumber,status,roleId,isProtected,verifiedAt,pinnedPostId,fullName,bio,avatar,cover,country,birthday,languageLevel,nativeLanguage,targetLanguage,currentStreak,totalStudyTime,level,experiencePoints,isVerified,lastActiveAt,createdById,updatedById,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserInfoEntity(id: $id, email: $email, username: $username, phoneNumber: $phoneNumber, status: $status, roleId: $roleId, isProtected: $isProtected, verifiedAt: $verifiedAt, pinnedPostId: $pinnedPostId, fullName: $fullName, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage, currentStreak: $currentStreak, totalStudyTime: $totalStudyTime, level: $level, experiencePoints: $experiencePoints, isVerified: $isVerified, lastActiveAt: $lastActiveAt, createdById: $createdById, updatedById: $updatedById, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserInfoEntityCopyWith<$Res>  {
  factory $UserInfoEntityCopyWith(UserInfoEntity value, $Res Function(UserInfoEntity) _then) = _$UserInfoEntityCopyWithImpl;
@useResult
$Res call({
 String id, String email, String username, String? phoneNumber, String status, int roleId, bool isProtected, DateTime? verifiedAt, String? pinnedPostId, String fullName, String? bio, String? avatar, String? cover, String? country, DateTime? birthday, String languageLevel, String nativeLanguage, String targetLanguage, int currentStreak, int totalStudyTime, int level, int experiencePoints, bool isVerified, DateTime lastActiveAt, String? createdById, String? updatedById, DateTime? deletedAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$UserInfoEntityCopyWithImpl<$Res>
    implements $UserInfoEntityCopyWith<$Res> {
  _$UserInfoEntityCopyWithImpl(this._self, this._then);

  final UserInfoEntity _self;
  final $Res Function(UserInfoEntity) _then;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = null,Object? phoneNumber = freezed,Object? status = null,Object? roleId = null,Object? isProtected = null,Object? verifiedAt = freezed,Object? pinnedPostId = freezed,Object? fullName = null,Object? bio = freezed,Object? avatar = freezed,Object? cover = freezed,Object? country = freezed,Object? birthday = freezed,Object? languageLevel = null,Object? nativeLanguage = null,Object? targetLanguage = null,Object? currentStreak = null,Object? totalStudyTime = null,Object? level = null,Object? experiencePoints = null,Object? isVerified = null,Object? lastActiveAt = null,Object? createdById = freezed,Object? updatedById = freezed,Object? deletedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,isProtected: null == isProtected ? _self.isProtected : isProtected // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pinnedPostId: freezed == pinnedPostId ? _self.pinnedPostId : pinnedPostId // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as DateTime?,languageLevel: null == languageLevel ? _self.languageLevel : languageLevel // ignore: cast_nullable_to_non_nullable
as String,nativeLanguage: null == nativeLanguage ? _self.nativeLanguage : nativeLanguage // ignore: cast_nullable_to_non_nullable
as String,targetLanguage: null == targetLanguage ? _self.targetLanguage : targetLanguage // ignore: cast_nullable_to_non_nullable
as String,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,totalStudyTime: null == totalStudyTime ? _self.totalStudyTime : totalStudyTime // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,experiencePoints: null == experiencePoints ? _self.experiencePoints : experiencePoints // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: null == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoEntity].
extension UserInfoEntityPatterns on UserInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String username,  String? phoneNumber,  String status,  int roleId,  bool isProtected,  DateTime? verifiedAt,  String? pinnedPostId,  String fullName,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  String languageLevel,  String nativeLanguage,  String targetLanguage,  int currentStreak,  int totalStudyTime,  int level,  int experiencePoints,  bool isVerified,  DateTime lastActiveAt,  String? createdById,  String? updatedById,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.phoneNumber,_that.status,_that.roleId,_that.isProtected,_that.verifiedAt,_that.pinnedPostId,_that.fullName,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage,_that.currentStreak,_that.totalStudyTime,_that.level,_that.experiencePoints,_that.isVerified,_that.lastActiveAt,_that.createdById,_that.updatedById,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String username,  String? phoneNumber,  String status,  int roleId,  bool isProtected,  DateTime? verifiedAt,  String? pinnedPostId,  String fullName,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  String languageLevel,  String nativeLanguage,  String targetLanguage,  int currentStreak,  int totalStudyTime,  int level,  int experiencePoints,  bool isVerified,  DateTime lastActiveAt,  String? createdById,  String? updatedById,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserInfoEntity():
return $default(_that.id,_that.email,_that.username,_that.phoneNumber,_that.status,_that.roleId,_that.isProtected,_that.verifiedAt,_that.pinnedPostId,_that.fullName,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage,_that.currentStreak,_that.totalStudyTime,_that.level,_that.experiencePoints,_that.isVerified,_that.lastActiveAt,_that.createdById,_that.updatedById,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String username,  String? phoneNumber,  String status,  int roleId,  bool isProtected,  DateTime? verifiedAt,  String? pinnedPostId,  String fullName,  String? bio,  String? avatar,  String? cover,  String? country,  DateTime? birthday,  String languageLevel,  String nativeLanguage,  String targetLanguage,  int currentStreak,  int totalStudyTime,  int level,  int experiencePoints,  bool isVerified,  DateTime lastActiveAt,  String? createdById,  String? updatedById,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoEntity() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.phoneNumber,_that.status,_that.roleId,_that.isProtected,_that.verifiedAt,_that.pinnedPostId,_that.fullName,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage,_that.currentStreak,_that.totalStudyTime,_that.level,_that.experiencePoints,_that.isVerified,_that.lastActiveAt,_that.createdById,_that.updatedById,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoEntity implements UserInfoEntity {
  const _UserInfoEntity({required this.id, required this.email, required this.username, this.phoneNumber, required this.status, required this.roleId, required this.isProtected, this.verifiedAt, this.pinnedPostId, required this.fullName, this.bio, this.avatar, this.cover, this.country, this.birthday, required this.languageLevel, required this.nativeLanguage, required this.targetLanguage, required this.currentStreak, required this.totalStudyTime, required this.level, required this.experiencePoints, required this.isVerified, required this.lastActiveAt, this.createdById, this.updatedById, this.deletedAt, required this.createdAt, required this.updatedAt});
  factory _UserInfoEntity.fromJson(Map<String, dynamic> json) => _$UserInfoEntityFromJson(json);

@override final  String id;
@override final  String email;
@override final  String username;
@override final  String? phoneNumber;
@override final  String status;
@override final  int roleId;
@override final  bool isProtected;
@override final  DateTime? verifiedAt;
@override final  String? pinnedPostId;
@override final  String fullName;
@override final  String? bio;
@override final  String? avatar;
@override final  String? cover;
@override final  String? country;
@override final  DateTime? birthday;
@override final  String languageLevel;
@override final  String nativeLanguage;
@override final  String targetLanguage;
@override final  int currentStreak;
@override final  int totalStudyTime;
@override final  int level;
@override final  int experiencePoints;
@override final  bool isVerified;
@override final  DateTime lastActiveAt;
@override final  String? createdById;
@override final  String? updatedById;
@override final  DateTime? deletedAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoEntityCopyWith<_UserInfoEntity> get copyWith => __$UserInfoEntityCopyWithImpl<_UserInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.pinnedPostId, pinnedPostId) || other.pinnedPostId == pinnedPostId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.totalStudyTime, totalStudyTime) || other.totalStudyTime == totalStudyTime)&&(identical(other.level, level) || other.level == level)&&(identical(other.experiencePoints, experiencePoints) || other.experiencePoints == experiencePoints)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,phoneNumber,status,roleId,isProtected,verifiedAt,pinnedPostId,fullName,bio,avatar,cover,country,birthday,languageLevel,nativeLanguage,targetLanguage,currentStreak,totalStudyTime,level,experiencePoints,isVerified,lastActiveAt,createdById,updatedById,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserInfoEntity(id: $id, email: $email, username: $username, phoneNumber: $phoneNumber, status: $status, roleId: $roleId, isProtected: $isProtected, verifiedAt: $verifiedAt, pinnedPostId: $pinnedPostId, fullName: $fullName, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage, currentStreak: $currentStreak, totalStudyTime: $totalStudyTime, level: $level, experiencePoints: $experiencePoints, isVerified: $isVerified, lastActiveAt: $lastActiveAt, createdById: $createdById, updatedById: $updatedById, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserInfoEntityCopyWith<$Res> implements $UserInfoEntityCopyWith<$Res> {
  factory _$UserInfoEntityCopyWith(_UserInfoEntity value, $Res Function(_UserInfoEntity) _then) = __$UserInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String username, String? phoneNumber, String status, int roleId, bool isProtected, DateTime? verifiedAt, String? pinnedPostId, String fullName, String? bio, String? avatar, String? cover, String? country, DateTime? birthday, String languageLevel, String nativeLanguage, String targetLanguage, int currentStreak, int totalStudyTime, int level, int experiencePoints, bool isVerified, DateTime lastActiveAt, String? createdById, String? updatedById, DateTime? deletedAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$UserInfoEntityCopyWithImpl<$Res>
    implements _$UserInfoEntityCopyWith<$Res> {
  __$UserInfoEntityCopyWithImpl(this._self, this._then);

  final _UserInfoEntity _self;
  final $Res Function(_UserInfoEntity) _then;

/// Create a copy of UserInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? phoneNumber = freezed,Object? status = null,Object? roleId = null,Object? isProtected = null,Object? verifiedAt = freezed,Object? pinnedPostId = freezed,Object? fullName = null,Object? bio = freezed,Object? avatar = freezed,Object? cover = freezed,Object? country = freezed,Object? birthday = freezed,Object? languageLevel = null,Object? nativeLanguage = null,Object? targetLanguage = null,Object? currentStreak = null,Object? totalStudyTime = null,Object? level = null,Object? experiencePoints = null,Object? isVerified = null,Object? lastActiveAt = null,Object? createdById = freezed,Object? updatedById = freezed,Object? deletedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserInfoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as int,isProtected: null == isProtected ? _self.isProtected : isProtected // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,pinnedPostId: freezed == pinnedPostId ? _self.pinnedPostId : pinnedPostId // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,cover: freezed == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as DateTime?,languageLevel: null == languageLevel ? _self.languageLevel : languageLevel // ignore: cast_nullable_to_non_nullable
as String,nativeLanguage: null == nativeLanguage ? _self.nativeLanguage : nativeLanguage // ignore: cast_nullable_to_non_nullable
as String,targetLanguage: null == targetLanguage ? _self.targetLanguage : targetLanguage // ignore: cast_nullable_to_non_nullable
as String,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,totalStudyTime: null == totalStudyTime ? _self.totalStudyTime : totalStudyTime // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,experiencePoints: null == experiencePoints ? _self.experiencePoints : experiencePoints // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: null == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdById: freezed == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String?,updatedById: freezed == updatedById ? _self.updatedById : updatedById // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
