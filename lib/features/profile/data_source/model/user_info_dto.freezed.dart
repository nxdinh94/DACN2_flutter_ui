// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoDto {

@HiveField(0) String get id;@HiveField(1) String get email;@HiveField(2) String get username;@HiveField(3) String? get phoneNumber;@HiveField(4) String get status;@HiveField(5) int get roleId;@HiveField(6) bool get isProtected;@HiveField(7) DateTime? get verifiedAt;@HiveField(8) String? get pinnedPostId;@HiveField(9) String get fullName;@HiveField(10) String? get bio;@HiveField(11) String? get avatar;@HiveField(12) String? get cover;@HiveField(13) String? get country;@HiveField(14) DateTime? get birthday;@HiveField(15) String get languageLevel;@HiveField(16) String get nativeLanguage;@HiveField(17) String get targetLanguage;@HiveField(18) int get currentStreak;@HiveField(19) int get totalStudyTime;@HiveField(20) int get level;@HiveField(21) int get experiencePoints;@HiveField(22) bool get isVerified;@HiveField(23) DateTime get lastActiveAt;@HiveField(24) String? get createdById;@HiveField(25) String? get updatedById;@HiveField(26) DateTime? get deletedAt;@HiveField(27) DateTime get createdAt;@HiveField(28) DateTime get updatedAt;
/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoDtoCopyWith<UserInfoDto> get copyWith => _$UserInfoDtoCopyWithImpl<UserInfoDto>(this as UserInfoDto, _$identity);

  /// Serializes this UserInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.pinnedPostId, pinnedPostId) || other.pinnedPostId == pinnedPostId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.totalStudyTime, totalStudyTime) || other.totalStudyTime == totalStudyTime)&&(identical(other.level, level) || other.level == level)&&(identical(other.experiencePoints, experiencePoints) || other.experiencePoints == experiencePoints)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,phoneNumber,status,roleId,isProtected,verifiedAt,pinnedPostId,fullName,bio,avatar,cover,country,birthday,languageLevel,nativeLanguage,targetLanguage,currentStreak,totalStudyTime,level,experiencePoints,isVerified,lastActiveAt,createdById,updatedById,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserInfoDto(id: $id, email: $email, username: $username, phoneNumber: $phoneNumber, status: $status, roleId: $roleId, isProtected: $isProtected, verifiedAt: $verifiedAt, pinnedPostId: $pinnedPostId, fullName: $fullName, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage, currentStreak: $currentStreak, totalStudyTime: $totalStudyTime, level: $level, experiencePoints: $experiencePoints, isVerified: $isVerified, lastActiveAt: $lastActiveAt, createdById: $createdById, updatedById: $updatedById, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserInfoDtoCopyWith<$Res>  {
  factory $UserInfoDtoCopyWith(UserInfoDto value, $Res Function(UserInfoDto) _then) = _$UserInfoDtoCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String email,@HiveField(2) String username,@HiveField(3) String? phoneNumber,@HiveField(4) String status,@HiveField(5) int roleId,@HiveField(6) bool isProtected,@HiveField(7) DateTime? verifiedAt,@HiveField(8) String? pinnedPostId,@HiveField(9) String fullName,@HiveField(10) String? bio,@HiveField(11) String? avatar,@HiveField(12) String? cover,@HiveField(13) String? country,@HiveField(14) DateTime? birthday,@HiveField(15) String languageLevel,@HiveField(16) String nativeLanguage,@HiveField(17) String targetLanguage,@HiveField(18) int currentStreak,@HiveField(19) int totalStudyTime,@HiveField(20) int level,@HiveField(21) int experiencePoints,@HiveField(22) bool isVerified,@HiveField(23) DateTime lastActiveAt,@HiveField(24) String? createdById,@HiveField(25) String? updatedById,@HiveField(26) DateTime? deletedAt,@HiveField(27) DateTime createdAt,@HiveField(28) DateTime updatedAt
});




}
/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._self, this._then);

  final UserInfoDto _self;
  final $Res Function(UserInfoDto) _then;

/// Create a copy of UserInfoDto
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


/// Adds pattern-matching-related methods to [UserInfoDto].
extension UserInfoDtoPatterns on UserInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String email, @HiveField(2)  String username, @HiveField(3)  String? phoneNumber, @HiveField(4)  String status, @HiveField(5)  int roleId, @HiveField(6)  bool isProtected, @HiveField(7)  DateTime? verifiedAt, @HiveField(8)  String? pinnedPostId, @HiveField(9)  String fullName, @HiveField(10)  String? bio, @HiveField(11)  String? avatar, @HiveField(12)  String? cover, @HiveField(13)  String? country, @HiveField(14)  DateTime? birthday, @HiveField(15)  String languageLevel, @HiveField(16)  String nativeLanguage, @HiveField(17)  String targetLanguage, @HiveField(18)  int currentStreak, @HiveField(19)  int totalStudyTime, @HiveField(20)  int level, @HiveField(21)  int experiencePoints, @HiveField(22)  bool isVerified, @HiveField(23)  DateTime lastActiveAt, @HiveField(24)  String? createdById, @HiveField(25)  String? updatedById, @HiveField(26)  DateTime? deletedAt, @HiveField(27)  DateTime createdAt, @HiveField(28)  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String email, @HiveField(2)  String username, @HiveField(3)  String? phoneNumber, @HiveField(4)  String status, @HiveField(5)  int roleId, @HiveField(6)  bool isProtected, @HiveField(7)  DateTime? verifiedAt, @HiveField(8)  String? pinnedPostId, @HiveField(9)  String fullName, @HiveField(10)  String? bio, @HiveField(11)  String? avatar, @HiveField(12)  String? cover, @HiveField(13)  String? country, @HiveField(14)  DateTime? birthday, @HiveField(15)  String languageLevel, @HiveField(16)  String nativeLanguage, @HiveField(17)  String targetLanguage, @HiveField(18)  int currentStreak, @HiveField(19)  int totalStudyTime, @HiveField(20)  int level, @HiveField(21)  int experiencePoints, @HiveField(22)  bool isVerified, @HiveField(23)  DateTime lastActiveAt, @HiveField(24)  String? createdById, @HiveField(25)  String? updatedById, @HiveField(26)  DateTime? deletedAt, @HiveField(27)  DateTime createdAt, @HiveField(28)  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserInfoDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String email, @HiveField(2)  String username, @HiveField(3)  String? phoneNumber, @HiveField(4)  String status, @HiveField(5)  int roleId, @HiveField(6)  bool isProtected, @HiveField(7)  DateTime? verifiedAt, @HiveField(8)  String? pinnedPostId, @HiveField(9)  String fullName, @HiveField(10)  String? bio, @HiveField(11)  String? avatar, @HiveField(12)  String? cover, @HiveField(13)  String? country, @HiveField(14)  DateTime? birthday, @HiveField(15)  String languageLevel, @HiveField(16)  String nativeLanguage, @HiveField(17)  String targetLanguage, @HiveField(18)  int currentStreak, @HiveField(19)  int totalStudyTime, @HiveField(20)  int level, @HiveField(21)  int experiencePoints, @HiveField(22)  bool isVerified, @HiveField(23)  DateTime lastActiveAt, @HiveField(24)  String? createdById, @HiveField(25)  String? updatedById, @HiveField(26)  DateTime? deletedAt, @HiveField(27)  DateTime createdAt, @HiveField(28)  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoDto() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.phoneNumber,_that.status,_that.roleId,_that.isProtected,_that.verifiedAt,_that.pinnedPostId,_that.fullName,_that.bio,_that.avatar,_that.cover,_that.country,_that.birthday,_that.languageLevel,_that.nativeLanguage,_that.targetLanguage,_that.currentStreak,_that.totalStudyTime,_that.level,_that.experiencePoints,_that.isVerified,_that.lastActiveAt,_that.createdById,_that.updatedById,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _UserInfoDto implements UserInfoDto {
  const _UserInfoDto({@HiveField(0) required this.id, @HiveField(1) required this.email, @HiveField(2) required this.username, @HiveField(3) this.phoneNumber, @HiveField(4) required this.status, @HiveField(5) required this.roleId, @HiveField(6) required this.isProtected, @HiveField(7) this.verifiedAt, @HiveField(8) this.pinnedPostId, @HiveField(9) required this.fullName, @HiveField(10) this.bio, @HiveField(11) this.avatar, @HiveField(12) this.cover, @HiveField(13) this.country, @HiveField(14) this.birthday, @HiveField(15) required this.languageLevel, @HiveField(16) required this.nativeLanguage, @HiveField(17) required this.targetLanguage, @HiveField(18) required this.currentStreak, @HiveField(19) required this.totalStudyTime, @HiveField(20) required this.level, @HiveField(21) required this.experiencePoints, @HiveField(22) required this.isVerified, @HiveField(23) required this.lastActiveAt, @HiveField(24) this.createdById, @HiveField(25) this.updatedById, @HiveField(26) this.deletedAt, @HiveField(27) required this.createdAt, @HiveField(28) required this.updatedAt});
  factory _UserInfoDto.fromJson(Map<String, dynamic> json) => _$UserInfoDtoFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String email;
@override@HiveField(2) final  String username;
@override@HiveField(3) final  String? phoneNumber;
@override@HiveField(4) final  String status;
@override@HiveField(5) final  int roleId;
@override@HiveField(6) final  bool isProtected;
@override@HiveField(7) final  DateTime? verifiedAt;
@override@HiveField(8) final  String? pinnedPostId;
@override@HiveField(9) final  String fullName;
@override@HiveField(10) final  String? bio;
@override@HiveField(11) final  String? avatar;
@override@HiveField(12) final  String? cover;
@override@HiveField(13) final  String? country;
@override@HiveField(14) final  DateTime? birthday;
@override@HiveField(15) final  String languageLevel;
@override@HiveField(16) final  String nativeLanguage;
@override@HiveField(17) final  String targetLanguage;
@override@HiveField(18) final  int currentStreak;
@override@HiveField(19) final  int totalStudyTime;
@override@HiveField(20) final  int level;
@override@HiveField(21) final  int experiencePoints;
@override@HiveField(22) final  bool isVerified;
@override@HiveField(23) final  DateTime lastActiveAt;
@override@HiveField(24) final  String? createdById;
@override@HiveField(25) final  String? updatedById;
@override@HiveField(26) final  DateTime? deletedAt;
@override@HiveField(27) final  DateTime createdAt;
@override@HiveField(28) final  DateTime updatedAt;

/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoDtoCopyWith<_UserInfoDto> get copyWith => __$UserInfoDtoCopyWithImpl<_UserInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.roleId, roleId) || other.roleId == roleId)&&(identical(other.isProtected, isProtected) || other.isProtected == isProtected)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.pinnedPostId, pinnedPostId) || other.pinnedPostId == pinnedPostId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.cover, cover) || other.cover == cover)&&(identical(other.country, country) || other.country == country)&&(identical(other.birthday, birthday) || other.birthday == birthday)&&(identical(other.languageLevel, languageLevel) || other.languageLevel == languageLevel)&&(identical(other.nativeLanguage, nativeLanguage) || other.nativeLanguage == nativeLanguage)&&(identical(other.targetLanguage, targetLanguage) || other.targetLanguage == targetLanguage)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.totalStudyTime, totalStudyTime) || other.totalStudyTime == totalStudyTime)&&(identical(other.level, level) || other.level == level)&&(identical(other.experiencePoints, experiencePoints) || other.experiencePoints == experiencePoints)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.updatedById, updatedById) || other.updatedById == updatedById)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,phoneNumber,status,roleId,isProtected,verifiedAt,pinnedPostId,fullName,bio,avatar,cover,country,birthday,languageLevel,nativeLanguage,targetLanguage,currentStreak,totalStudyTime,level,experiencePoints,isVerified,lastActiveAt,createdById,updatedById,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserInfoDto(id: $id, email: $email, username: $username, phoneNumber: $phoneNumber, status: $status, roleId: $roleId, isProtected: $isProtected, verifiedAt: $verifiedAt, pinnedPostId: $pinnedPostId, fullName: $fullName, bio: $bio, avatar: $avatar, cover: $cover, country: $country, birthday: $birthday, languageLevel: $languageLevel, nativeLanguage: $nativeLanguage, targetLanguage: $targetLanguage, currentStreak: $currentStreak, totalStudyTime: $totalStudyTime, level: $level, experiencePoints: $experiencePoints, isVerified: $isVerified, lastActiveAt: $lastActiveAt, createdById: $createdById, updatedById: $updatedById, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserInfoDtoCopyWith<$Res> implements $UserInfoDtoCopyWith<$Res> {
  factory _$UserInfoDtoCopyWith(_UserInfoDto value, $Res Function(_UserInfoDto) _then) = __$UserInfoDtoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String email,@HiveField(2) String username,@HiveField(3) String? phoneNumber,@HiveField(4) String status,@HiveField(5) int roleId,@HiveField(6) bool isProtected,@HiveField(7) DateTime? verifiedAt,@HiveField(8) String? pinnedPostId,@HiveField(9) String fullName,@HiveField(10) String? bio,@HiveField(11) String? avatar,@HiveField(12) String? cover,@HiveField(13) String? country,@HiveField(14) DateTime? birthday,@HiveField(15) String languageLevel,@HiveField(16) String nativeLanguage,@HiveField(17) String targetLanguage,@HiveField(18) int currentStreak,@HiveField(19) int totalStudyTime,@HiveField(20) int level,@HiveField(21) int experiencePoints,@HiveField(22) bool isVerified,@HiveField(23) DateTime lastActiveAt,@HiveField(24) String? createdById,@HiveField(25) String? updatedById,@HiveField(26) DateTime? deletedAt,@HiveField(27) DateTime createdAt,@HiveField(28) DateTime updatedAt
});




}
/// @nodoc
class __$UserInfoDtoCopyWithImpl<$Res>
    implements _$UserInfoDtoCopyWith<$Res> {
  __$UserInfoDtoCopyWithImpl(this._self, this._then);

  final _UserInfoDto _self;
  final $Res Function(_UserInfoDto) _then;

/// Create a copy of UserInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? phoneNumber = freezed,Object? status = null,Object? roleId = null,Object? isProtected = null,Object? verifiedAt = freezed,Object? pinnedPostId = freezed,Object? fullName = null,Object? bio = freezed,Object? avatar = freezed,Object? cover = freezed,Object? country = freezed,Object? birthday = freezed,Object? languageLevel = null,Object? nativeLanguage = null,Object? targetLanguage = null,Object? currentStreak = null,Object? totalStudyTime = null,Object? level = null,Object? experiencePoints = null,Object? isVerified = null,Object? lastActiveAt = null,Object? createdById = freezed,Object? updatedById = freezed,Object? deletedAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserInfoDto(
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
