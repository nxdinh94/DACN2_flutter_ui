// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostDto {

 String get id; String get userId; String get content; String? get contentJson; String get visibility; int get likeCount; int get commentCount; int get shareCount; int get viewCount; int get repostCount; int get quoteCount; int get mentionCount; String get language; String get difficulty; List<String> get topics; bool get isReported; bool get isPinned; bool get isFeatured; String? get inReplyToPostId; String? get inReplyToUserId; String? get repostOfId; String? get quoteOfId; ReferencedPostDto? get inReplyToPost; ReferencedPostDto? get repostOf; ReferencedPostDto? get quoteOf; DateTime? get deletedAt; DateTime? get bookmarkedAt; bool get isLiked; bool get isBookmarked; DateTime get createdAt; DateTime get updatedAt; PostUserDto get user; List<HashtagDto> get hashtags; List<MentionDto> get mentions; List<MediaDto> get media;
/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDtoCopyWith<PostDto> get copyWith => _$PostDtoCopyWithImpl<PostDto>(this as PostDto, _$identity);

  /// Serializes this PostDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.contentJson, contentJson) || other.contentJson == contentJson)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.mentionCount, mentionCount) || other.mentionCount == mentionCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId)&&(identical(other.inReplyToPost, inReplyToPost) || other.inReplyToPost == inReplyToPost)&&(identical(other.repostOf, repostOf) || other.repostOf == repostOf)&&(identical(other.quoteOf, quoteOf) || other.quoteOf == quoteOf)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.bookmarkedAt, bookmarkedAt) || other.bookmarkedAt == bookmarkedAt)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&const DeepCollectionEquality().equals(other.mentions, mentions)&&const DeepCollectionEquality().equals(other.media, media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,contentJson,visibility,likeCount,commentCount,shareCount,viewCount,repostCount,quoteCount,mentionCount,language,difficulty,const DeepCollectionEquality().hash(topics),isReported,isPinned,isFeatured,inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId,inReplyToPost,repostOf,quoteOf,deletedAt,bookmarkedAt,isLiked,isBookmarked,createdAt,updatedAt,user,const DeepCollectionEquality().hash(hashtags),const DeepCollectionEquality().hash(mentions),const DeepCollectionEquality().hash(media)]);

@override
String toString() {
  return 'PostDto(id: $id, userId: $userId, content: $content, contentJson: $contentJson, visibility: $visibility, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, viewCount: $viewCount, repostCount: $repostCount, quoteCount: $quoteCount, mentionCount: $mentionCount, language: $language, difficulty: $difficulty, topics: $topics, isReported: $isReported, isPinned: $isPinned, isFeatured: $isFeatured, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId, inReplyToPost: $inReplyToPost, repostOf: $repostOf, quoteOf: $quoteOf, deletedAt: $deletedAt, bookmarkedAt: $bookmarkedAt, isLiked: $isLiked, isBookmarked: $isBookmarked, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, hashtags: $hashtags, mentions: $mentions, media: $media)';
}


}

/// @nodoc
abstract mixin class $PostDtoCopyWith<$Res>  {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) _then) = _$PostDtoCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String content, String? contentJson, String visibility, int likeCount, int commentCount, int shareCount, int viewCount, int repostCount, int quoteCount, int mentionCount, String language, String difficulty, List<String> topics, bool isReported, bool isPinned, bool isFeatured, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId, ReferencedPostDto? inReplyToPost, ReferencedPostDto? repostOf, ReferencedPostDto? quoteOf, DateTime? deletedAt, DateTime? bookmarkedAt, bool isLiked, bool isBookmarked, DateTime createdAt, DateTime updatedAt, PostUserDto user, List<HashtagDto> hashtags, List<MentionDto> mentions, List<MediaDto> media
});


$ReferencedPostDtoCopyWith<$Res>? get inReplyToPost;$ReferencedPostDtoCopyWith<$Res>? get repostOf;$ReferencedPostDtoCopyWith<$Res>? get quoteOf;$PostUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$PostDtoCopyWithImpl<$Res>
    implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._self, this._then);

  final PostDto _self;
  final $Res Function(PostDto) _then;

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? contentJson = freezed,Object? visibility = null,Object? likeCount = null,Object? commentCount = null,Object? shareCount = null,Object? viewCount = null,Object? repostCount = null,Object? quoteCount = null,Object? mentionCount = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? isReported = null,Object? isPinned = null,Object? isFeatured = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,Object? inReplyToPost = freezed,Object? repostOf = freezed,Object? quoteOf = freezed,Object? deletedAt = freezed,Object? bookmarkedAt = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? createdAt = null,Object? updatedAt = null,Object? user = null,Object? hashtags = null,Object? mentions = null,Object? media = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,contentJson: freezed == contentJson ? _self.contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as String?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,shareCount: null == shareCount ? _self.shareCount : shareCount // ignore: cast_nullable_to_non_nullable
as int,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,repostCount: null == repostCount ? _self.repostCount : repostCount // ignore: cast_nullable_to_non_nullable
as int,quoteCount: null == quoteCount ? _self.quoteCount : quoteCount // ignore: cast_nullable_to_non_nullable
as int,mentionCount: null == mentionCount ? _self.mentionCount : mentionCount // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,isReported: null == isReported ? _self.isReported : isReported // ignore: cast_nullable_to_non_nullable
as bool,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToPost: freezed == inReplyToPost ? _self.inReplyToPost : inReplyToPost // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,repostOf: freezed == repostOf ? _self.repostOf : repostOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,quoteOf: freezed == quoteOf ? _self.quoteOf : quoteOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,bookmarkedAt: freezed == bookmarkedAt ? _self.bookmarkedAt : bookmarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserDto,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<HashtagDto>,mentions: null == mentions ? _self.mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<MentionDto>,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<MediaDto>,
  ));
}
/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get inReplyToPost {
    if (_self.inReplyToPost == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.inReplyToPost!, (value) {
    return _then(_self.copyWith(inReplyToPost: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get repostOf {
    if (_self.repostOf == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.repostOf!, (value) {
    return _then(_self.copyWith(repostOf: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get quoteOf {
    if (_self.quoteOf == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.quoteOf!, (value) {
    return _then(_self.copyWith(quoteOf: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserDtoCopyWith<$Res> get user {
  
  return $PostUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostDto].
extension PostDtoPatterns on PostDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostDto value)  $default,){
final _that = this;
switch (_that) {
case _PostDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostDto? inReplyToPost,  ReferencedPostDto? repostOf,  ReferencedPostDto? quoteOf,  DateTime? deletedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  DateTime createdAt,  DateTime updatedAt,  PostUserDto user,  List<HashtagDto> hashtags,  List<MentionDto> mentions,  List<MediaDto> media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostDto() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.createdAt,_that.updatedAt,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostDto? inReplyToPost,  ReferencedPostDto? repostOf,  ReferencedPostDto? quoteOf,  DateTime? deletedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  DateTime createdAt,  DateTime updatedAt,  PostUserDto user,  List<HashtagDto> hashtags,  List<MentionDto> mentions,  List<MediaDto> media)  $default,) {final _that = this;
switch (_that) {
case _PostDto():
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.createdAt,_that.updatedAt,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostDto? inReplyToPost,  ReferencedPostDto? repostOf,  ReferencedPostDto? quoteOf,  DateTime? deletedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  DateTime createdAt,  DateTime updatedAt,  PostUserDto user,  List<HashtagDto> hashtags,  List<MentionDto> mentions,  List<MediaDto> media)?  $default,) {final _that = this;
switch (_that) {
case _PostDto() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.createdAt,_that.updatedAt,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostDto extends PostDto {
  const _PostDto({required this.id, required this.userId, required this.content, this.contentJson, required this.visibility, required this.likeCount, required this.commentCount, required this.shareCount, required this.viewCount, required this.repostCount, required this.quoteCount, required this.mentionCount, required this.language, required this.difficulty, required final  List<String> topics, required this.isReported, required this.isPinned, required this.isFeatured, this.inReplyToPostId, this.inReplyToUserId, this.repostOfId, this.quoteOfId, this.inReplyToPost, this.repostOf, this.quoteOf, this.deletedAt, this.bookmarkedAt, this.isLiked = false, this.isBookmarked = false, required this.createdAt, required this.updatedAt, required this.user, final  List<HashtagDto> hashtags = const [], final  List<MentionDto> mentions = const [], final  List<MediaDto> media = const []}): _topics = topics,_hashtags = hashtags,_mentions = mentions,_media = media,super._();
  factory _PostDto.fromJson(Map<String, dynamic> json) => _$PostDtoFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String content;
@override final  String? contentJson;
@override final  String visibility;
@override final  int likeCount;
@override final  int commentCount;
@override final  int shareCount;
@override final  int viewCount;
@override final  int repostCount;
@override final  int quoteCount;
@override final  int mentionCount;
@override final  String language;
@override final  String difficulty;
 final  List<String> _topics;
@override List<String> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

@override final  bool isReported;
@override final  bool isPinned;
@override final  bool isFeatured;
@override final  String? inReplyToPostId;
@override final  String? inReplyToUserId;
@override final  String? repostOfId;
@override final  String? quoteOfId;
@override final  ReferencedPostDto? inReplyToPost;
@override final  ReferencedPostDto? repostOf;
@override final  ReferencedPostDto? quoteOf;
@override final  DateTime? deletedAt;
@override final  DateTime? bookmarkedAt;
@override@JsonKey() final  bool isLiked;
@override@JsonKey() final  bool isBookmarked;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  PostUserDto user;
 final  List<HashtagDto> _hashtags;
@override@JsonKey() List<HashtagDto> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<MentionDto> _mentions;
@override@JsonKey() List<MentionDto> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

 final  List<MediaDto> _media;
@override@JsonKey() List<MediaDto> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}


/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostDtoCopyWith<_PostDto> get copyWith => __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.contentJson, contentJson) || other.contentJson == contentJson)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.mentionCount, mentionCount) || other.mentionCount == mentionCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId)&&(identical(other.inReplyToPost, inReplyToPost) || other.inReplyToPost == inReplyToPost)&&(identical(other.repostOf, repostOf) || other.repostOf == repostOf)&&(identical(other.quoteOf, quoteOf) || other.quoteOf == quoteOf)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.bookmarkedAt, bookmarkedAt) || other.bookmarkedAt == bookmarkedAt)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&const DeepCollectionEquality().equals(other._media, _media));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,contentJson,visibility,likeCount,commentCount,shareCount,viewCount,repostCount,quoteCount,mentionCount,language,difficulty,const DeepCollectionEquality().hash(_topics),isReported,isPinned,isFeatured,inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId,inReplyToPost,repostOf,quoteOf,deletedAt,bookmarkedAt,isLiked,isBookmarked,createdAt,updatedAt,user,const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_mentions),const DeepCollectionEquality().hash(_media)]);

@override
String toString() {
  return 'PostDto(id: $id, userId: $userId, content: $content, contentJson: $contentJson, visibility: $visibility, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, viewCount: $viewCount, repostCount: $repostCount, quoteCount: $quoteCount, mentionCount: $mentionCount, language: $language, difficulty: $difficulty, topics: $topics, isReported: $isReported, isPinned: $isPinned, isFeatured: $isFeatured, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId, inReplyToPost: $inReplyToPost, repostOf: $repostOf, quoteOf: $quoteOf, deletedAt: $deletedAt, bookmarkedAt: $bookmarkedAt, isLiked: $isLiked, isBookmarked: $isBookmarked, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, hashtags: $hashtags, mentions: $mentions, media: $media)';
}


}

/// @nodoc
abstract mixin class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) _then) = __$PostDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String content, String? contentJson, String visibility, int likeCount, int commentCount, int shareCount, int viewCount, int repostCount, int quoteCount, int mentionCount, String language, String difficulty, List<String> topics, bool isReported, bool isPinned, bool isFeatured, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId, ReferencedPostDto? inReplyToPost, ReferencedPostDto? repostOf, ReferencedPostDto? quoteOf, DateTime? deletedAt, DateTime? bookmarkedAt, bool isLiked, bool isBookmarked, DateTime createdAt, DateTime updatedAt, PostUserDto user, List<HashtagDto> hashtags, List<MentionDto> mentions, List<MediaDto> media
});


@override $ReferencedPostDtoCopyWith<$Res>? get inReplyToPost;@override $ReferencedPostDtoCopyWith<$Res>? get repostOf;@override $ReferencedPostDtoCopyWith<$Res>? get quoteOf;@override $PostUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(this._self, this._then);

  final _PostDto _self;
  final $Res Function(_PostDto) _then;

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? contentJson = freezed,Object? visibility = null,Object? likeCount = null,Object? commentCount = null,Object? shareCount = null,Object? viewCount = null,Object? repostCount = null,Object? quoteCount = null,Object? mentionCount = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? isReported = null,Object? isPinned = null,Object? isFeatured = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,Object? inReplyToPost = freezed,Object? repostOf = freezed,Object? quoteOf = freezed,Object? deletedAt = freezed,Object? bookmarkedAt = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? createdAt = null,Object? updatedAt = null,Object? user = null,Object? hashtags = null,Object? mentions = null,Object? media = null,}) {
  return _then(_PostDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,contentJson: freezed == contentJson ? _self.contentJson : contentJson // ignore: cast_nullable_to_non_nullable
as String?,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,commentCount: null == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int,shareCount: null == shareCount ? _self.shareCount : shareCount // ignore: cast_nullable_to_non_nullable
as int,viewCount: null == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int,repostCount: null == repostCount ? _self.repostCount : repostCount // ignore: cast_nullable_to_non_nullable
as int,quoteCount: null == quoteCount ? _self.quoteCount : quoteCount // ignore: cast_nullable_to_non_nullable
as int,mentionCount: null == mentionCount ? _self.mentionCount : mentionCount // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<String>,isReported: null == isReported ? _self.isReported : isReported // ignore: cast_nullable_to_non_nullable
as bool,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,inReplyToPostId: freezed == inReplyToPostId ? _self.inReplyToPostId : inReplyToPostId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToUserId: freezed == inReplyToUserId ? _self.inReplyToUserId : inReplyToUserId // ignore: cast_nullable_to_non_nullable
as String?,repostOfId: freezed == repostOfId ? _self.repostOfId : repostOfId // ignore: cast_nullable_to_non_nullable
as String?,quoteOfId: freezed == quoteOfId ? _self.quoteOfId : quoteOfId // ignore: cast_nullable_to_non_nullable
as String?,inReplyToPost: freezed == inReplyToPost ? _self.inReplyToPost : inReplyToPost // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,repostOf: freezed == repostOf ? _self.repostOf : repostOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,quoteOf: freezed == quoteOf ? _self.quoteOf : quoteOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostDto?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,bookmarkedAt: freezed == bookmarkedAt ? _self.bookmarkedAt : bookmarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserDto,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<HashtagDto>,mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<MentionDto>,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<MediaDto>,
  ));
}

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get inReplyToPost {
    if (_self.inReplyToPost == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.inReplyToPost!, (value) {
    return _then(_self.copyWith(inReplyToPost: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get repostOf {
    if (_self.repostOf == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.repostOf!, (value) {
    return _then(_self.copyWith(repostOf: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<$Res>? get quoteOf {
    if (_self.quoteOf == null) {
    return null;
  }

  return $ReferencedPostDtoCopyWith<$Res>(_self.quoteOf!, (value) {
    return _then(_self.copyWith(quoteOf: value));
  });
}/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserDtoCopyWith<$Res> get user {
  
  return $PostUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$MediaDto {

 String get id; String get url; String get type; int get ordinal; String? get metadata;
/// Create a copy of MediaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaDtoCopyWith<MediaDto> get copyWith => _$MediaDtoCopyWithImpl<MediaDto>(this as MediaDto, _$identity);

  /// Serializes this MediaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaDto&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'MediaDto(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MediaDtoCopyWith<$Res>  {
  factory $MediaDtoCopyWith(MediaDto value, $Res Function(MediaDto) _then) = _$MediaDtoCopyWithImpl;
@useResult
$Res call({
 String id, String url, String type, int ordinal, String? metadata
});




}
/// @nodoc
class _$MediaDtoCopyWithImpl<$Res>
    implements $MediaDtoCopyWith<$Res> {
  _$MediaDtoCopyWithImpl(this._self, this._then);

  final MediaDto _self;
  final $Res Function(MediaDto) _then;

/// Create a copy of MediaDto
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


/// Adds pattern-matching-related methods to [MediaDto].
extension MediaDtoPatterns on MediaDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaDto value)  $default,){
final _that = this;
switch (_that) {
case _MediaDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaDto value)?  $default,){
final _that = this;
switch (_that) {
case _MediaDto() when $default != null:
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
case _MediaDto() when $default != null:
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
case _MediaDto():
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
case _MediaDto() when $default != null:
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaDto extends MediaDto {
  const _MediaDto({required this.id, required this.url, required this.type, required this.ordinal, this.metadata}): super._();
  factory _MediaDto.fromJson(Map<String, dynamic> json) => _$MediaDtoFromJson(json);

@override final  String id;
@override final  String url;
@override final  String type;
@override final  int ordinal;
@override final  String? metadata;

/// Create a copy of MediaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaDtoCopyWith<_MediaDto> get copyWith => __$MediaDtoCopyWithImpl<_MediaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaDto&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'MediaDto(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MediaDtoCopyWith<$Res> implements $MediaDtoCopyWith<$Res> {
  factory _$MediaDtoCopyWith(_MediaDto value, $Res Function(_MediaDto) _then) = __$MediaDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String type, int ordinal, String? metadata
});




}
/// @nodoc
class __$MediaDtoCopyWithImpl<$Res>
    implements _$MediaDtoCopyWith<$Res> {
  __$MediaDtoCopyWithImpl(this._self, this._then);

  final _MediaDto _self;
  final $Res Function(_MediaDto) _then;

/// Create a copy of MediaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_MediaDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReferencedPostDto {

 String get id; String get content; PostUserDto get user;
/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferencedPostDtoCopyWith<ReferencedPostDto> get copyWith => _$ReferencedPostDtoCopyWithImpl<ReferencedPostDto>(this as ReferencedPostDto, _$identity);

  /// Serializes this ReferencedPostDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferencedPostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,user);

@override
String toString() {
  return 'ReferencedPostDto(id: $id, content: $content, user: $user)';
}


}

/// @nodoc
abstract mixin class $ReferencedPostDtoCopyWith<$Res>  {
  factory $ReferencedPostDtoCopyWith(ReferencedPostDto value, $Res Function(ReferencedPostDto) _then) = _$ReferencedPostDtoCopyWithImpl;
@useResult
$Res call({
 String id, String content, PostUserDto user
});


$PostUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$ReferencedPostDtoCopyWithImpl<$Res>
    implements $ReferencedPostDtoCopyWith<$Res> {
  _$ReferencedPostDtoCopyWithImpl(this._self, this._then);

  final ReferencedPostDto _self;
  final $Res Function(ReferencedPostDto) _then;

/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? user = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserDto,
  ));
}
/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserDtoCopyWith<$Res> get user {
  
  return $PostUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferencedPostDto].
extension ReferencedPostDtoPatterns on ReferencedPostDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferencedPostDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferencedPostDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferencedPostDto value)  $default,){
final _that = this;
switch (_that) {
case _ReferencedPostDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferencedPostDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReferencedPostDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String content,  PostUserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferencedPostDto() when $default != null:
return $default(_that.id,_that.content,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String content,  PostUserDto user)  $default,) {final _that = this;
switch (_that) {
case _ReferencedPostDto():
return $default(_that.id,_that.content,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String content,  PostUserDto user)?  $default,) {final _that = this;
switch (_that) {
case _ReferencedPostDto() when $default != null:
return $default(_that.id,_that.content,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferencedPostDto extends ReferencedPostDto {
  const _ReferencedPostDto({required this.id, required this.content, required this.user}): super._();
  factory _ReferencedPostDto.fromJson(Map<String, dynamic> json) => _$ReferencedPostDtoFromJson(json);

@override final  String id;
@override final  String content;
@override final  PostUserDto user;

/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferencedPostDtoCopyWith<_ReferencedPostDto> get copyWith => __$ReferencedPostDtoCopyWithImpl<_ReferencedPostDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferencedPostDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferencedPostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,user);

@override
String toString() {
  return 'ReferencedPostDto(id: $id, content: $content, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ReferencedPostDtoCopyWith<$Res> implements $ReferencedPostDtoCopyWith<$Res> {
  factory _$ReferencedPostDtoCopyWith(_ReferencedPostDto value, $Res Function(_ReferencedPostDto) _then) = __$ReferencedPostDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String content, PostUserDto user
});


@override $PostUserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$ReferencedPostDtoCopyWithImpl<$Res>
    implements _$ReferencedPostDtoCopyWith<$Res> {
  __$ReferencedPostDtoCopyWithImpl(this._self, this._then);

  final _ReferencedPostDto _self;
  final $Res Function(_ReferencedPostDto) _then;

/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? user = null,}) {
  return _then(_ReferencedPostDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserDto,
  ));
}

/// Create a copy of ReferencedPostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserDtoCopyWith<$Res> get user {
  
  return $PostUserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$PostUserDto {

 String get id; String get username; String get fullName; String? get avatar; bool get isVerified;
/// Create a copy of PostUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostUserDtoCopyWith<PostUserDto> get copyWith => _$PostUserDtoCopyWithImpl<PostUserDto>(this as PostUserDto, _$identity);

  /// Serializes this PostUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar,isVerified);

@override
String toString() {
  return 'PostUserDto(id: $id, username: $username, fullName: $fullName, avatar: $avatar, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $PostUserDtoCopyWith<$Res>  {
  factory $PostUserDtoCopyWith(PostUserDto value, $Res Function(PostUserDto) _then) = _$PostUserDtoCopyWithImpl;
@useResult
$Res call({
 String id, String username, String fullName, String? avatar, bool isVerified
});




}
/// @nodoc
class _$PostUserDtoCopyWithImpl<$Res>
    implements $PostUserDtoCopyWith<$Res> {
  _$PostUserDtoCopyWithImpl(this._self, this._then);

  final PostUserDto _self;
  final $Res Function(PostUserDto) _then;

/// Create a copy of PostUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PostUserDto].
extension PostUserDtoPatterns on PostUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostUserDto value)  $default,){
final _that = this;
switch (_that) {
case _PostUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String username,  String fullName,  String? avatar,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostUserDto() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String username,  String fullName,  String? avatar,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _PostUserDto():
return $default(_that.id,_that.username,_that.fullName,_that.avatar,_that.isVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String username,  String fullName,  String? avatar,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _PostUserDto() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostUserDto extends PostUserDto {
  const _PostUserDto({required this.id, required this.username, required this.fullName, this.avatar, required this.isVerified}): super._();
  factory _PostUserDto.fromJson(Map<String, dynamic> json) => _$PostUserDtoFromJson(json);

@override final  String id;
@override final  String username;
@override final  String fullName;
@override final  String? avatar;
@override final  bool isVerified;

/// Create a copy of PostUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostUserDtoCopyWith<_PostUserDto> get copyWith => __$PostUserDtoCopyWithImpl<_PostUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar,isVerified);

@override
String toString() {
  return 'PostUserDto(id: $id, username: $username, fullName: $fullName, avatar: $avatar, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$PostUserDtoCopyWith<$Res> implements $PostUserDtoCopyWith<$Res> {
  factory _$PostUserDtoCopyWith(_PostUserDto value, $Res Function(_PostUserDto) _then) = __$PostUserDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String username, String fullName, String? avatar, bool isVerified
});




}
/// @nodoc
class __$PostUserDtoCopyWithImpl<$Res>
    implements _$PostUserDtoCopyWith<$Res> {
  __$PostUserDtoCopyWithImpl(this._self, this._then);

  final _PostUserDto _self;
  final $Res Function(_PostUserDto) _then;

/// Create a copy of PostUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,Object? isVerified = null,}) {
  return _then(_PostUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$HashtagDto {

 int get id; String get name;
/// Create a copy of HashtagDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HashtagDtoCopyWith<HashtagDto> get copyWith => _$HashtagDtoCopyWithImpl<HashtagDto>(this as HashtagDto, _$identity);

  /// Serializes this HashtagDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashtagDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HashtagDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HashtagDtoCopyWith<$Res>  {
  factory $HashtagDtoCopyWith(HashtagDto value, $Res Function(HashtagDto) _then) = _$HashtagDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$HashtagDtoCopyWithImpl<$Res>
    implements $HashtagDtoCopyWith<$Res> {
  _$HashtagDtoCopyWithImpl(this._self, this._then);

  final HashtagDto _self;
  final $Res Function(HashtagDto) _then;

/// Create a copy of HashtagDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HashtagDto].
extension HashtagDtoPatterns on HashtagDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HashtagDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HashtagDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashtagDto value)  $default,){
final _that = this;
switch (_that) {
case _HashtagDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashtagDto value)?  $default,){
final _that = this;
switch (_that) {
case _HashtagDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HashtagDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _HashtagDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _HashtagDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HashtagDto extends HashtagDto {
  const _HashtagDto({required this.id, required this.name}): super._();
  factory _HashtagDto.fromJson(Map<String, dynamic> json) => _$HashtagDtoFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of HashtagDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HashtagDtoCopyWith<_HashtagDto> get copyWith => __$HashtagDtoCopyWithImpl<_HashtagDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HashtagDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HashtagDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HashtagDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HashtagDtoCopyWith<$Res> implements $HashtagDtoCopyWith<$Res> {
  factory _$HashtagDtoCopyWith(_HashtagDto value, $Res Function(_HashtagDto) _then) = __$HashtagDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$HashtagDtoCopyWithImpl<$Res>
    implements _$HashtagDtoCopyWith<$Res> {
  __$HashtagDtoCopyWithImpl(this._self, this._then);

  final _HashtagDto _self;
  final $Res Function(_HashtagDto) _then;

/// Create a copy of HashtagDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_HashtagDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MentionDto {

 String get userId; String get username; String get fullName; String? get avatar;
/// Create a copy of MentionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionDtoCopyWith<MentionDto> get copyWith => _$MentionDtoCopyWithImpl<MentionDto>(this as MentionDto, _$identity);

  /// Serializes this MentionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,fullName,avatar);

@override
String toString() {
  return 'MentionDto(userId: $userId, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $MentionDtoCopyWith<$Res>  {
  factory $MentionDtoCopyWith(MentionDto value, $Res Function(MentionDto) _then) = _$MentionDtoCopyWithImpl;
@useResult
$Res call({
 String userId, String username, String fullName, String? avatar
});




}
/// @nodoc
class _$MentionDtoCopyWithImpl<$Res>
    implements $MentionDtoCopyWith<$Res> {
  _$MentionDtoCopyWithImpl(this._self, this._then);

  final MentionDto _self;
  final $Res Function(MentionDto) _then;

/// Create a copy of MentionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MentionDto].
extension MentionDtoPatterns on MentionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MentionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MentionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MentionDto value)  $default,){
final _that = this;
switch (_that) {
case _MentionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MentionDto value)?  $default,){
final _that = this;
switch (_that) {
case _MentionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String username,  String fullName,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MentionDto() when $default != null:
return $default(_that.userId,_that.username,_that.fullName,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String username,  String fullName,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _MentionDto():
return $default(_that.userId,_that.username,_that.fullName,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String username,  String fullName,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _MentionDto() when $default != null:
return $default(_that.userId,_that.username,_that.fullName,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MentionDto extends MentionDto {
  const _MentionDto({required this.userId, required this.username, required this.fullName, this.avatar}): super._();
  factory _MentionDto.fromJson(Map<String, dynamic> json) => _$MentionDtoFromJson(json);

@override final  String userId;
@override final  String username;
@override final  String fullName;
@override final  String? avatar;

/// Create a copy of MentionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MentionDtoCopyWith<_MentionDto> get copyWith => __$MentionDtoCopyWithImpl<_MentionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MentionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MentionDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,fullName,avatar);

@override
String toString() {
  return 'MentionDto(userId: $userId, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$MentionDtoCopyWith<$Res> implements $MentionDtoCopyWith<$Res> {
  factory _$MentionDtoCopyWith(_MentionDto value, $Res Function(_MentionDto) _then) = __$MentionDtoCopyWithImpl;
@override @useResult
$Res call({
 String userId, String username, String fullName, String? avatar
});




}
/// @nodoc
class __$MentionDtoCopyWithImpl<$Res>
    implements _$MentionDtoCopyWith<$Res> {
  __$MentionDtoCopyWithImpl(this._self, this._then);

  final _MentionDto _self;
  final $Res Function(_MentionDto) _then;

/// Create a copy of MentionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,}) {
  return _then(_MentionDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreatePostResponseDto {

 PostDto get data;
/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostResponseDtoCopyWith<CreatePostResponseDto> get copyWith => _$CreatePostResponseDtoCopyWithImpl<CreatePostResponseDto>(this as CreatePostResponseDto, _$identity);

  /// Serializes this CreatePostResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostResponseDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreatePostResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $CreatePostResponseDtoCopyWith<$Res>  {
  factory $CreatePostResponseDtoCopyWith(CreatePostResponseDto value, $Res Function(CreatePostResponseDto) _then) = _$CreatePostResponseDtoCopyWithImpl;
@useResult
$Res call({
 PostDto data
});


$PostDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$CreatePostResponseDtoCopyWithImpl<$Res>
    implements $CreatePostResponseDtoCopyWith<$Res> {
  _$CreatePostResponseDtoCopyWithImpl(this._self, this._then);

  final CreatePostResponseDto _self;
  final $Res Function(CreatePostResponseDto) _then;

/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PostDto,
  ));
}
/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostDtoCopyWith<$Res> get data {
  
  return $PostDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreatePostResponseDto].
extension CreatePostResponseDtoPatterns on CreatePostResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PostDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostResponseDto() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PostDto data)  $default,) {final _that = this;
switch (_that) {
case _CreatePostResponseDto():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PostDto data)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostResponseDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostResponseDto implements CreatePostResponseDto {
  const _CreatePostResponseDto({required this.data});
  factory _CreatePostResponseDto.fromJson(Map<String, dynamic> json) => _$CreatePostResponseDtoFromJson(json);

@override final  PostDto data;

/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostResponseDtoCopyWith<_CreatePostResponseDto> get copyWith => __$CreatePostResponseDtoCopyWithImpl<_CreatePostResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostResponseDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CreatePostResponseDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreatePostResponseDtoCopyWith<$Res> implements $CreatePostResponseDtoCopyWith<$Res> {
  factory _$CreatePostResponseDtoCopyWith(_CreatePostResponseDto value, $Res Function(_CreatePostResponseDto) _then) = __$CreatePostResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 PostDto data
});


@override $PostDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$CreatePostResponseDtoCopyWithImpl<$Res>
    implements _$CreatePostResponseDtoCopyWith<$Res> {
  __$CreatePostResponseDtoCopyWithImpl(this._self, this._then);

  final _CreatePostResponseDto _self;
  final $Res Function(_CreatePostResponseDto) _then;

/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CreatePostResponseDto(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PostDto,
  ));
}

/// Create a copy of CreatePostResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostDtoCopyWith<$Res> get data {
  
  return $PostDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
