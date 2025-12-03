// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEntity {

 String get id; String get userId; String get content; String? get contentJson; String get visibility; int get likeCount; int get commentCount; int get shareCount; int get viewCount; int get repostCount; int get quoteCount; int get mentionCount; String get language; String get difficulty; List<String> get topics; bool get isReported; bool get isPinned; bool get isFeatured; String? get inReplyToPostId; String? get inReplyToUserId; String? get repostOfId; String? get quoteOfId; ReferencedPostEntity? get inReplyToPost; ReferencedPostEntity? get repostOf; ReferencedPostEntity? get quoteOf; DateTime? get deletedAt; DateTime get createdAt; DateTime get updatedAt; DateTime? get bookmarkedAt; bool get isLiked; bool get isBookmarked; PostUserEntity get user; List<HashtagEntity> get hashtags; List<MentionEntity> get mentions; List<MediaEntity> get media;
/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostEntityCopyWith<PostEntity> get copyWith => _$PostEntityCopyWithImpl<PostEntity>(this as PostEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.contentJson, contentJson) || other.contentJson == contentJson)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.mentionCount, mentionCount) || other.mentionCount == mentionCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other.topics, topics)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId)&&(identical(other.inReplyToPost, inReplyToPost) || other.inReplyToPost == inReplyToPost)&&(identical(other.repostOf, repostOf) || other.repostOf == repostOf)&&(identical(other.quoteOf, quoteOf) || other.quoteOf == quoteOf)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.bookmarkedAt, bookmarkedAt) || other.bookmarkedAt == bookmarkedAt)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&const DeepCollectionEquality().equals(other.mentions, mentions)&&const DeepCollectionEquality().equals(other.media, media));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,contentJson,visibility,likeCount,commentCount,shareCount,viewCount,repostCount,quoteCount,mentionCount,language,difficulty,const DeepCollectionEquality().hash(topics),isReported,isPinned,isFeatured,inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId,inReplyToPost,repostOf,quoteOf,deletedAt,createdAt,updatedAt,bookmarkedAt,isLiked,isBookmarked,user,const DeepCollectionEquality().hash(hashtags),const DeepCollectionEquality().hash(mentions),const DeepCollectionEquality().hash(media)]);

@override
String toString() {
  return 'PostEntity(id: $id, userId: $userId, content: $content, contentJson: $contentJson, visibility: $visibility, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, viewCount: $viewCount, repostCount: $repostCount, quoteCount: $quoteCount, mentionCount: $mentionCount, language: $language, difficulty: $difficulty, topics: $topics, isReported: $isReported, isPinned: $isPinned, isFeatured: $isFeatured, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId, inReplyToPost: $inReplyToPost, repostOf: $repostOf, quoteOf: $quoteOf, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, bookmarkedAt: $bookmarkedAt, isLiked: $isLiked, isBookmarked: $isBookmarked, user: $user, hashtags: $hashtags, mentions: $mentions, media: $media)';
}


}

/// @nodoc
abstract mixin class $PostEntityCopyWith<$Res>  {
  factory $PostEntityCopyWith(PostEntity value, $Res Function(PostEntity) _then) = _$PostEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String content, String? contentJson, String visibility, int likeCount, int commentCount, int shareCount, int viewCount, int repostCount, int quoteCount, int mentionCount, String language, String difficulty, List<String> topics, bool isReported, bool isPinned, bool isFeatured, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId, ReferencedPostEntity? inReplyToPost, ReferencedPostEntity? repostOf, ReferencedPostEntity? quoteOf, DateTime? deletedAt, DateTime createdAt, DateTime updatedAt, DateTime? bookmarkedAt, bool isLiked, bool isBookmarked, PostUserEntity user, List<HashtagEntity> hashtags, List<MentionEntity> mentions, List<MediaEntity> media
});


$ReferencedPostEntityCopyWith<$Res>? get inReplyToPost;$ReferencedPostEntityCopyWith<$Res>? get repostOf;$ReferencedPostEntityCopyWith<$Res>? get quoteOf;$PostUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$PostEntityCopyWithImpl<$Res>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._self, this._then);

  final PostEntity _self;
  final $Res Function(PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? contentJson = freezed,Object? visibility = null,Object? likeCount = null,Object? commentCount = null,Object? shareCount = null,Object? viewCount = null,Object? repostCount = null,Object? quoteCount = null,Object? mentionCount = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? isReported = null,Object? isPinned = null,Object? isFeatured = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,Object? inReplyToPost = freezed,Object? repostOf = freezed,Object? quoteOf = freezed,Object? deletedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? bookmarkedAt = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? user = null,Object? hashtags = null,Object? mentions = null,Object? media = null,}) {
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
as ReferencedPostEntity?,repostOf: freezed == repostOf ? _self.repostOf : repostOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostEntity?,quoteOf: freezed == quoteOf ? _self.quoteOf : quoteOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostEntity?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,bookmarkedAt: freezed == bookmarkedAt ? _self.bookmarkedAt : bookmarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserEntity,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<HashtagEntity>,mentions: null == mentions ? _self.mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<MentionEntity>,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<MediaEntity>,
  ));
}
/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get inReplyToPost {
    if (_self.inReplyToPost == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.inReplyToPost!, (value) {
    return _then(_self.copyWith(inReplyToPost: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get repostOf {
    if (_self.repostOf == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.repostOf!, (value) {
    return _then(_self.copyWith(repostOf: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get quoteOf {
    if (_self.quoteOf == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.quoteOf!, (value) {
    return _then(_self.copyWith(quoteOf: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserEntityCopyWith<$Res> get user {
  
  return $PostUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostEntity].
extension PostEntityPatterns on PostEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostEntity? inReplyToPost,  ReferencedPostEntity? repostOf,  ReferencedPostEntity? quoteOf,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  PostUserEntity user,  List<HashtagEntity> hashtags,  List<MentionEntity> mentions,  List<MediaEntity> media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostEntity? inReplyToPost,  ReferencedPostEntity? repostOf,  ReferencedPostEntity? quoteOf,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  PostUserEntity user,  List<HashtagEntity> hashtags,  List<MentionEntity> mentions,  List<MediaEntity> media)  $default,) {final _that = this;
switch (_that) {
case _PostEntity():
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String content,  String? contentJson,  String visibility,  int likeCount,  int commentCount,  int shareCount,  int viewCount,  int repostCount,  int quoteCount,  int mentionCount,  String language,  String difficulty,  List<String> topics,  bool isReported,  bool isPinned,  bool isFeatured,  String? inReplyToPostId,  String? inReplyToUserId,  String? repostOfId,  String? quoteOfId,  ReferencedPostEntity? inReplyToPost,  ReferencedPostEntity? repostOf,  ReferencedPostEntity? quoteOf,  DateTime? deletedAt,  DateTime createdAt,  DateTime updatedAt,  DateTime? bookmarkedAt,  bool isLiked,  bool isBookmarked,  PostUserEntity user,  List<HashtagEntity> hashtags,  List<MentionEntity> mentions,  List<MediaEntity> media)?  $default,) {final _that = this;
switch (_that) {
case _PostEntity() when $default != null:
return $default(_that.id,_that.userId,_that.content,_that.contentJson,_that.visibility,_that.likeCount,_that.commentCount,_that.shareCount,_that.viewCount,_that.repostCount,_that.quoteCount,_that.mentionCount,_that.language,_that.difficulty,_that.topics,_that.isReported,_that.isPinned,_that.isFeatured,_that.inReplyToPostId,_that.inReplyToUserId,_that.repostOfId,_that.quoteOfId,_that.inReplyToPost,_that.repostOf,_that.quoteOf,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.bookmarkedAt,_that.isLiked,_that.isBookmarked,_that.user,_that.hashtags,_that.mentions,_that.media);case _:
  return null;

}
}

}

/// @nodoc


class _PostEntity implements PostEntity {
  const _PostEntity({required this.id, required this.userId, required this.content, this.contentJson, required this.visibility, required this.likeCount, required this.commentCount, required this.shareCount, required this.viewCount, required this.repostCount, required this.quoteCount, required this.mentionCount, required this.language, required this.difficulty, required final  List<String> topics, required this.isReported, required this.isPinned, required this.isFeatured, this.inReplyToPostId, this.inReplyToUserId, this.repostOfId, this.quoteOfId, this.inReplyToPost, this.repostOf, this.quoteOf, this.deletedAt, required this.createdAt, required this.updatedAt, this.bookmarkedAt, this.isLiked = false, this.isBookmarked = false, required this.user, final  List<HashtagEntity> hashtags = const [], final  List<MentionEntity> mentions = const [], final  List<MediaEntity> media = const []}): _topics = topics,_hashtags = hashtags,_mentions = mentions,_media = media;
  

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
@override final  ReferencedPostEntity? inReplyToPost;
@override final  ReferencedPostEntity? repostOf;
@override final  ReferencedPostEntity? quoteOf;
@override final  DateTime? deletedAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? bookmarkedAt;
@override@JsonKey() final  bool isLiked;
@override@JsonKey() final  bool isBookmarked;
@override final  PostUserEntity user;
 final  List<HashtagEntity> _hashtags;
@override@JsonKey() List<HashtagEntity> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

 final  List<MentionEntity> _mentions;
@override@JsonKey() List<MentionEntity> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

 final  List<MediaEntity> _media;
@override@JsonKey() List<MediaEntity> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}


/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostEntityCopyWith<_PostEntity> get copyWith => __$PostEntityCopyWithImpl<_PostEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.contentJson, contentJson) || other.contentJson == contentJson)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.shareCount, shareCount) || other.shareCount == shareCount)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.repostCount, repostCount) || other.repostCount == repostCount)&&(identical(other.quoteCount, quoteCount) || other.quoteCount == quoteCount)&&(identical(other.mentionCount, mentionCount) || other.mentionCount == mentionCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&const DeepCollectionEquality().equals(other._topics, _topics)&&(identical(other.isReported, isReported) || other.isReported == isReported)&&(identical(other.isPinned, isPinned) || other.isPinned == isPinned)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.inReplyToPostId, inReplyToPostId) || other.inReplyToPostId == inReplyToPostId)&&(identical(other.inReplyToUserId, inReplyToUserId) || other.inReplyToUserId == inReplyToUserId)&&(identical(other.repostOfId, repostOfId) || other.repostOfId == repostOfId)&&(identical(other.quoteOfId, quoteOfId) || other.quoteOfId == quoteOfId)&&(identical(other.inReplyToPost, inReplyToPost) || other.inReplyToPost == inReplyToPost)&&(identical(other.repostOf, repostOf) || other.repostOf == repostOf)&&(identical(other.quoteOf, quoteOf) || other.quoteOf == quoteOf)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.bookmarkedAt, bookmarkedAt) || other.bookmarkedAt == bookmarkedAt)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.isBookmarked, isBookmarked) || other.isBookmarked == isBookmarked)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&const DeepCollectionEquality().equals(other._media, _media));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,content,contentJson,visibility,likeCount,commentCount,shareCount,viewCount,repostCount,quoteCount,mentionCount,language,difficulty,const DeepCollectionEquality().hash(_topics),isReported,isPinned,isFeatured,inReplyToPostId,inReplyToUserId,repostOfId,quoteOfId,inReplyToPost,repostOf,quoteOf,deletedAt,createdAt,updatedAt,bookmarkedAt,isLiked,isBookmarked,user,const DeepCollectionEquality().hash(_hashtags),const DeepCollectionEquality().hash(_mentions),const DeepCollectionEquality().hash(_media)]);

@override
String toString() {
  return 'PostEntity(id: $id, userId: $userId, content: $content, contentJson: $contentJson, visibility: $visibility, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, viewCount: $viewCount, repostCount: $repostCount, quoteCount: $quoteCount, mentionCount: $mentionCount, language: $language, difficulty: $difficulty, topics: $topics, isReported: $isReported, isPinned: $isPinned, isFeatured: $isFeatured, inReplyToPostId: $inReplyToPostId, inReplyToUserId: $inReplyToUserId, repostOfId: $repostOfId, quoteOfId: $quoteOfId, inReplyToPost: $inReplyToPost, repostOf: $repostOf, quoteOf: $quoteOf, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, bookmarkedAt: $bookmarkedAt, isLiked: $isLiked, isBookmarked: $isBookmarked, user: $user, hashtags: $hashtags, mentions: $mentions, media: $media)';
}


}

/// @nodoc
abstract mixin class _$PostEntityCopyWith<$Res> implements $PostEntityCopyWith<$Res> {
  factory _$PostEntityCopyWith(_PostEntity value, $Res Function(_PostEntity) _then) = __$PostEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String content, String? contentJson, String visibility, int likeCount, int commentCount, int shareCount, int viewCount, int repostCount, int quoteCount, int mentionCount, String language, String difficulty, List<String> topics, bool isReported, bool isPinned, bool isFeatured, String? inReplyToPostId, String? inReplyToUserId, String? repostOfId, String? quoteOfId, ReferencedPostEntity? inReplyToPost, ReferencedPostEntity? repostOf, ReferencedPostEntity? quoteOf, DateTime? deletedAt, DateTime createdAt, DateTime updatedAt, DateTime? bookmarkedAt, bool isLiked, bool isBookmarked, PostUserEntity user, List<HashtagEntity> hashtags, List<MentionEntity> mentions, List<MediaEntity> media
});


@override $ReferencedPostEntityCopyWith<$Res>? get inReplyToPost;@override $ReferencedPostEntityCopyWith<$Res>? get repostOf;@override $ReferencedPostEntityCopyWith<$Res>? get quoteOf;@override $PostUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$PostEntityCopyWithImpl<$Res>
    implements _$PostEntityCopyWith<$Res> {
  __$PostEntityCopyWithImpl(this._self, this._then);

  final _PostEntity _self;
  final $Res Function(_PostEntity) _then;

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? content = null,Object? contentJson = freezed,Object? visibility = null,Object? likeCount = null,Object? commentCount = null,Object? shareCount = null,Object? viewCount = null,Object? repostCount = null,Object? quoteCount = null,Object? mentionCount = null,Object? language = null,Object? difficulty = null,Object? topics = null,Object? isReported = null,Object? isPinned = null,Object? isFeatured = null,Object? inReplyToPostId = freezed,Object? inReplyToUserId = freezed,Object? repostOfId = freezed,Object? quoteOfId = freezed,Object? inReplyToPost = freezed,Object? repostOf = freezed,Object? quoteOf = freezed,Object? deletedAt = freezed,Object? createdAt = null,Object? updatedAt = null,Object? bookmarkedAt = freezed,Object? isLiked = null,Object? isBookmarked = null,Object? user = null,Object? hashtags = null,Object? mentions = null,Object? media = null,}) {
  return _then(_PostEntity(
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
as ReferencedPostEntity?,repostOf: freezed == repostOf ? _self.repostOf : repostOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostEntity?,quoteOf: freezed == quoteOf ? _self.quoteOf : quoteOf // ignore: cast_nullable_to_non_nullable
as ReferencedPostEntity?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,bookmarkedAt: freezed == bookmarkedAt ? _self.bookmarkedAt : bookmarkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,isBookmarked: null == isBookmarked ? _self.isBookmarked : isBookmarked // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserEntity,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<HashtagEntity>,mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<MentionEntity>,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<MediaEntity>,
  ));
}

/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get inReplyToPost {
    if (_self.inReplyToPost == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.inReplyToPost!, (value) {
    return _then(_self.copyWith(inReplyToPost: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get repostOf {
    if (_self.repostOf == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.repostOf!, (value) {
    return _then(_self.copyWith(repostOf: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<$Res>? get quoteOf {
    if (_self.quoteOf == null) {
    return null;
  }

  return $ReferencedPostEntityCopyWith<$Res>(_self.quoteOf!, (value) {
    return _then(_self.copyWith(quoteOf: value));
  });
}/// Create a copy of PostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserEntityCopyWith<$Res> get user {
  
  return $PostUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$MediaEntity {

 String get id; String get url; String get type; int get ordinal; MediaMetadataEntity? get metadata;
/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaEntityCopyWith<MediaEntity> get copyWith => _$MediaEntityCopyWithImpl<MediaEntity>(this as MediaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'MediaEntity(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MediaEntityCopyWith<$Res>  {
  factory $MediaEntityCopyWith(MediaEntity value, $Res Function(MediaEntity) _then) = _$MediaEntityCopyWithImpl;
@useResult
$Res call({
 String id, String url, String type, int ordinal, MediaMetadataEntity? metadata
});


$MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$MediaEntityCopyWithImpl<$Res>
    implements $MediaEntityCopyWith<$Res> {
  _$MediaEntityCopyWithImpl(this._self, this._then);

  final MediaEntity _self;
  final $Res Function(MediaEntity) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}
/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaEntity].
extension MediaEntityPatterns on MediaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaEntity value)  $default,){
final _that = this;
switch (_that) {
case _MediaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MediaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  MediaMetadataEntity? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String type,  int ordinal,  MediaMetadataEntity? metadata)  $default,) {final _that = this;
switch (_that) {
case _MediaEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String type,  int ordinal,  MediaMetadataEntity? metadata)?  $default,) {final _that = this;
switch (_that) {
case _MediaEntity() when $default != null:
return $default(_that.id,_that.url,_that.type,_that.ordinal,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _MediaEntity implements MediaEntity {
  const _MediaEntity({required this.id, required this.url, required this.type, required this.ordinal, this.metadata});
  

@override final  String id;
@override final  String url;
@override final  String type;
@override final  int ordinal;
@override final  MediaMetadataEntity? metadata;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaEntityCopyWith<_MediaEntity> get copyWith => __$MediaEntityCopyWithImpl<_MediaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.ordinal, ordinal) || other.ordinal == ordinal)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,url,type,ordinal,metadata);

@override
String toString() {
  return 'MediaEntity(id: $id, url: $url, type: $type, ordinal: $ordinal, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$MediaEntityCopyWith<$Res> implements $MediaEntityCopyWith<$Res> {
  factory _$MediaEntityCopyWith(_MediaEntity value, $Res Function(_MediaEntity) _then) = __$MediaEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String type, int ordinal, MediaMetadataEntity? metadata
});


@override $MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$MediaEntityCopyWithImpl<$Res>
    implements _$MediaEntityCopyWith<$Res> {
  __$MediaEntityCopyWithImpl(this._self, this._then);

  final _MediaEntity _self;
  final $Res Function(_MediaEntity) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? type = null,Object? ordinal = null,Object? metadata = freezed,}) {
  return _then(_MediaEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,ordinal: null == ordinal ? _self.ordinal : ordinal // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc
mixin _$MediaMetadataEntity {

 String? get mimetype; String? get fileName; int? get fileSize; String? get uploadedAt;
/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<MediaMetadataEntity> get copyWith => _$MediaMetadataEntityCopyWithImpl<MediaMetadataEntity>(this as MediaMetadataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaMetadataEntity&&(identical(other.mimetype, mimetype) || other.mimetype == mimetype)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,mimetype,fileName,fileSize,uploadedAt);

@override
String toString() {
  return 'MediaMetadataEntity(mimetype: $mimetype, fileName: $fileName, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $MediaMetadataEntityCopyWith<$Res>  {
  factory $MediaMetadataEntityCopyWith(MediaMetadataEntity value, $Res Function(MediaMetadataEntity) _then) = _$MediaMetadataEntityCopyWithImpl;
@useResult
$Res call({
 String? mimetype, String? fileName, int? fileSize, String? uploadedAt
});




}
/// @nodoc
class _$MediaMetadataEntityCopyWithImpl<$Res>
    implements $MediaMetadataEntityCopyWith<$Res> {
  _$MediaMetadataEntityCopyWithImpl(this._self, this._then);

  final MediaMetadataEntity _self;
  final $Res Function(MediaMetadataEntity) _then;

/// Create a copy of MediaMetadataEntity
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


/// Adds pattern-matching-related methods to [MediaMetadataEntity].
extension MediaMetadataEntityPatterns on MediaMetadataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaMetadataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaMetadataEntity value)  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaMetadataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
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
case _MediaMetadataEntity() when $default != null:
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
case _MediaMetadataEntity():
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
case _MediaMetadataEntity() when $default != null:
return $default(_that.mimetype,_that.fileName,_that.fileSize,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc


class _MediaMetadataEntity implements MediaMetadataEntity {
   _MediaMetadataEntity({this.mimetype, this.fileName, this.fileSize, this.uploadedAt});
  

@override final  String? mimetype;
@override final  String? fileName;
@override final  int? fileSize;
@override final  String? uploadedAt;

/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaMetadataEntityCopyWith<_MediaMetadataEntity> get copyWith => __$MediaMetadataEntityCopyWithImpl<_MediaMetadataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaMetadataEntity&&(identical(other.mimetype, mimetype) || other.mimetype == mimetype)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,mimetype,fileName,fileSize,uploadedAt);

@override
String toString() {
  return 'MediaMetadataEntity(mimetype: $mimetype, fileName: $fileName, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$MediaMetadataEntityCopyWith<$Res> implements $MediaMetadataEntityCopyWith<$Res> {
  factory _$MediaMetadataEntityCopyWith(_MediaMetadataEntity value, $Res Function(_MediaMetadataEntity) _then) = __$MediaMetadataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? mimetype, String? fileName, int? fileSize, String? uploadedAt
});




}
/// @nodoc
class __$MediaMetadataEntityCopyWithImpl<$Res>
    implements _$MediaMetadataEntityCopyWith<$Res> {
  __$MediaMetadataEntityCopyWithImpl(this._self, this._then);

  final _MediaMetadataEntity _self;
  final $Res Function(_MediaMetadataEntity) _then;

/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mimetype = freezed,Object? fileName = freezed,Object? fileSize = freezed,Object? uploadedAt = freezed,}) {
  return _then(_MediaMetadataEntity(
mimetype: freezed == mimetype ? _self.mimetype : mimetype // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReferencedPostEntity {

 String get id; String get content; PostUserEntity get user;
/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferencedPostEntityCopyWith<ReferencedPostEntity> get copyWith => _$ReferencedPostEntityCopyWithImpl<ReferencedPostEntity>(this as ReferencedPostEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferencedPostEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,user);

@override
String toString() {
  return 'ReferencedPostEntity(id: $id, content: $content, user: $user)';
}


}

/// @nodoc
abstract mixin class $ReferencedPostEntityCopyWith<$Res>  {
  factory $ReferencedPostEntityCopyWith(ReferencedPostEntity value, $Res Function(ReferencedPostEntity) _then) = _$ReferencedPostEntityCopyWithImpl;
@useResult
$Res call({
 String id, String content, PostUserEntity user
});


$PostUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$ReferencedPostEntityCopyWithImpl<$Res>
    implements $ReferencedPostEntityCopyWith<$Res> {
  _$ReferencedPostEntityCopyWithImpl(this._self, this._then);

  final ReferencedPostEntity _self;
  final $Res Function(ReferencedPostEntity) _then;

/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? user = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserEntity,
  ));
}
/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserEntityCopyWith<$Res> get user {
  
  return $PostUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferencedPostEntity].
extension ReferencedPostEntityPatterns on ReferencedPostEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferencedPostEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferencedPostEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferencedPostEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReferencedPostEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferencedPostEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReferencedPostEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String content,  PostUserEntity user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferencedPostEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String content,  PostUserEntity user)  $default,) {final _that = this;
switch (_that) {
case _ReferencedPostEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String content,  PostUserEntity user)?  $default,) {final _that = this;
switch (_that) {
case _ReferencedPostEntity() when $default != null:
return $default(_that.id,_that.content,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _ReferencedPostEntity implements ReferencedPostEntity {
  const _ReferencedPostEntity({required this.id, required this.content, required this.user});
  

@override final  String id;
@override final  String content;
@override final  PostUserEntity user;

/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferencedPostEntityCopyWith<_ReferencedPostEntity> get copyWith => __$ReferencedPostEntityCopyWithImpl<_ReferencedPostEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferencedPostEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,user);

@override
String toString() {
  return 'ReferencedPostEntity(id: $id, content: $content, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ReferencedPostEntityCopyWith<$Res> implements $ReferencedPostEntityCopyWith<$Res> {
  factory _$ReferencedPostEntityCopyWith(_ReferencedPostEntity value, $Res Function(_ReferencedPostEntity) _then) = __$ReferencedPostEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String content, PostUserEntity user
});


@override $PostUserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ReferencedPostEntityCopyWithImpl<$Res>
    implements _$ReferencedPostEntityCopyWith<$Res> {
  __$ReferencedPostEntityCopyWithImpl(this._self, this._then);

  final _ReferencedPostEntity _self;
  final $Res Function(_ReferencedPostEntity) _then;

/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? user = null,}) {
  return _then(_ReferencedPostEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as PostUserEntity,
  ));
}

/// Create a copy of ReferencedPostEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostUserEntityCopyWith<$Res> get user {
  
  return $PostUserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$PostUserEntity {

 String get id; String get username; String get fullName; String? get avatar; bool get isVerified;
/// Create a copy of PostUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostUserEntityCopyWith<PostUserEntity> get copyWith => _$PostUserEntityCopyWithImpl<PostUserEntity>(this as PostUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar,isVerified);

@override
String toString() {
  return 'PostUserEntity(id: $id, username: $username, fullName: $fullName, avatar: $avatar, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $PostUserEntityCopyWith<$Res>  {
  factory $PostUserEntityCopyWith(PostUserEntity value, $Res Function(PostUserEntity) _then) = _$PostUserEntityCopyWithImpl;
@useResult
$Res call({
 String id, String username, String fullName, String? avatar, bool isVerified
});




}
/// @nodoc
class _$PostUserEntityCopyWithImpl<$Res>
    implements $PostUserEntityCopyWith<$Res> {
  _$PostUserEntityCopyWithImpl(this._self, this._then);

  final PostUserEntity _self;
  final $Res Function(PostUserEntity) _then;

/// Create a copy of PostUserEntity
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


/// Adds pattern-matching-related methods to [PostUserEntity].
extension PostUserEntityPatterns on PostUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _PostUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PostUserEntity() when $default != null:
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
case _PostUserEntity() when $default != null:
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
case _PostUserEntity():
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
case _PostUserEntity() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc


class _PostUserEntity implements PostUserEntity {
  const _PostUserEntity({required this.id, required this.username, required this.fullName, this.avatar, required this.isVerified});
  

@override final  String id;
@override final  String username;
@override final  String fullName;
@override final  String? avatar;
@override final  bool isVerified;

/// Create a copy of PostUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostUserEntityCopyWith<_PostUserEntity> get copyWith => __$PostUserEntityCopyWithImpl<_PostUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostUserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}


@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar,isVerified);

@override
String toString() {
  return 'PostUserEntity(id: $id, username: $username, fullName: $fullName, avatar: $avatar, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$PostUserEntityCopyWith<$Res> implements $PostUserEntityCopyWith<$Res> {
  factory _$PostUserEntityCopyWith(_PostUserEntity value, $Res Function(_PostUserEntity) _then) = __$PostUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String username, String fullName, String? avatar, bool isVerified
});




}
/// @nodoc
class __$PostUserEntityCopyWithImpl<$Res>
    implements _$PostUserEntityCopyWith<$Res> {
  __$PostUserEntityCopyWithImpl(this._self, this._then);

  final _PostUserEntity _self;
  final $Res Function(_PostUserEntity) _then;

/// Create a copy of PostUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,Object? isVerified = null,}) {
  return _then(_PostUserEntity(
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
mixin _$HashtagEntity {

 int get id; String get name;
/// Create a copy of HashtagEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HashtagEntityCopyWith<HashtagEntity> get copyWith => _$HashtagEntityCopyWithImpl<HashtagEntity>(this as HashtagEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashtagEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HashtagEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $HashtagEntityCopyWith<$Res>  {
  factory $HashtagEntityCopyWith(HashtagEntity value, $Res Function(HashtagEntity) _then) = _$HashtagEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$HashtagEntityCopyWithImpl<$Res>
    implements $HashtagEntityCopyWith<$Res> {
  _$HashtagEntityCopyWithImpl(this._self, this._then);

  final HashtagEntity _self;
  final $Res Function(HashtagEntity) _then;

/// Create a copy of HashtagEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HashtagEntity].
extension HashtagEntityPatterns on HashtagEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HashtagEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HashtagEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashtagEntity value)  $default,){
final _that = this;
switch (_that) {
case _HashtagEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashtagEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HashtagEntity() when $default != null:
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
case _HashtagEntity() when $default != null:
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
case _HashtagEntity():
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
case _HashtagEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _HashtagEntity implements HashtagEntity {
  const _HashtagEntity({required this.id, required this.name});
  

@override final  int id;
@override final  String name;

/// Create a copy of HashtagEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HashtagEntityCopyWith<_HashtagEntity> get copyWith => __$HashtagEntityCopyWithImpl<_HashtagEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HashtagEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'HashtagEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$HashtagEntityCopyWith<$Res> implements $HashtagEntityCopyWith<$Res> {
  factory _$HashtagEntityCopyWith(_HashtagEntity value, $Res Function(_HashtagEntity) _then) = __$HashtagEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$HashtagEntityCopyWithImpl<$Res>
    implements _$HashtagEntityCopyWith<$Res> {
  __$HashtagEntityCopyWithImpl(this._self, this._then);

  final _HashtagEntity _self;
  final $Res Function(_HashtagEntity) _then;

/// Create a copy of HashtagEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_HashtagEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MentionEntity {

 String get userId; String get username; String get fullName; String? get avatar;
/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionEntityCopyWith<MentionEntity> get copyWith => _$MentionEntityCopyWithImpl<MentionEntity>(this as MentionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,userId,username,fullName,avatar);

@override
String toString() {
  return 'MentionEntity(userId: $userId, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $MentionEntityCopyWith<$Res>  {
  factory $MentionEntityCopyWith(MentionEntity value, $Res Function(MentionEntity) _then) = _$MentionEntityCopyWithImpl;
@useResult
$Res call({
 String userId, String username, String fullName, String? avatar
});




}
/// @nodoc
class _$MentionEntityCopyWithImpl<$Res>
    implements $MentionEntityCopyWith<$Res> {
  _$MentionEntityCopyWithImpl(this._self, this._then);

  final MentionEntity _self;
  final $Res Function(MentionEntity) _then;

/// Create a copy of MentionEntity
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


/// Adds pattern-matching-related methods to [MentionEntity].
extension MentionEntityPatterns on MentionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MentionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MentionEntity value)  $default,){
final _that = this;
switch (_that) {
case _MentionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MentionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
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
case _MentionEntity() when $default != null:
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
case _MentionEntity():
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
case _MentionEntity() when $default != null:
return $default(_that.userId,_that.username,_that.fullName,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _MentionEntity implements MentionEntity {
  const _MentionEntity({required this.userId, required this.username, required this.fullName, this.avatar});
  

@override final  String userId;
@override final  String username;
@override final  String fullName;
@override final  String? avatar;

/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MentionEntityCopyWith<_MentionEntity> get copyWith => __$MentionEntityCopyWithImpl<_MentionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MentionEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,userId,username,fullName,avatar);

@override
String toString() {
  return 'MentionEntity(userId: $userId, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$MentionEntityCopyWith<$Res> implements $MentionEntityCopyWith<$Res> {
  factory _$MentionEntityCopyWith(_MentionEntity value, $Res Function(_MentionEntity) _then) = __$MentionEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, String username, String fullName, String? avatar
});




}
/// @nodoc
class __$MentionEntityCopyWithImpl<$Res>
    implements _$MentionEntityCopyWith<$Res> {
  __$MentionEntityCopyWithImpl(this._self, this._then);

  final _MentionEntity _self;
  final $Res Function(_MentionEntity) _then;

/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? fullName = null,Object? avatar = freezed,}) {
  return _then(_MentionEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
