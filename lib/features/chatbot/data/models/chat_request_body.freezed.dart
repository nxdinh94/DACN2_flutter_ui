// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRequestBody {

@JsonKey(name: 'chat_content') String get chatContent;@JsonKey(name: 'chat_history') List<String> get chatHistory;@JsonKey(name: 'user_data') Map<String, dynamic> get userData;
/// Create a copy of ChatRequestBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRequestBodyCopyWith<ChatRequestBody> get copyWith => _$ChatRequestBodyCopyWithImpl<ChatRequestBody>(this as ChatRequestBody, _$identity);

  /// Serializes this ChatRequestBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRequestBody&&(identical(other.chatContent, chatContent) || other.chatContent == chatContent)&&const DeepCollectionEquality().equals(other.chatHistory, chatHistory)&&const DeepCollectionEquality().equals(other.userData, userData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatContent,const DeepCollectionEquality().hash(chatHistory),const DeepCollectionEquality().hash(userData));

@override
String toString() {
  return 'ChatRequestBody(chatContent: $chatContent, chatHistory: $chatHistory, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $ChatRequestBodyCopyWith<$Res>  {
  factory $ChatRequestBodyCopyWith(ChatRequestBody value, $Res Function(ChatRequestBody) _then) = _$ChatRequestBodyCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'chat_content') String chatContent,@JsonKey(name: 'chat_history') List<String> chatHistory,@JsonKey(name: 'user_data') Map<String, dynamic> userData
});




}
/// @nodoc
class _$ChatRequestBodyCopyWithImpl<$Res>
    implements $ChatRequestBodyCopyWith<$Res> {
  _$ChatRequestBodyCopyWithImpl(this._self, this._then);

  final ChatRequestBody _self;
  final $Res Function(ChatRequestBody) _then;

/// Create a copy of ChatRequestBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatContent = null,Object? chatHistory = null,Object? userData = null,}) {
  return _then(_self.copyWith(
chatContent: null == chatContent ? _self.chatContent : chatContent // ignore: cast_nullable_to_non_nullable
as String,chatHistory: null == chatHistory ? _self.chatHistory : chatHistory // ignore: cast_nullable_to_non_nullable
as List<String>,userData: null == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRequestBody].
extension ChatRequestBodyPatterns on ChatRequestBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRequestBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRequestBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRequestBody value)  $default,){
final _that = this;
switch (_that) {
case _ChatRequestBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRequestBody value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRequestBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'chat_content')  String chatContent, @JsonKey(name: 'chat_history')  List<String> chatHistory, @JsonKey(name: 'user_data')  Map<String, dynamic> userData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRequestBody() when $default != null:
return $default(_that.chatContent,_that.chatHistory,_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'chat_content')  String chatContent, @JsonKey(name: 'chat_history')  List<String> chatHistory, @JsonKey(name: 'user_data')  Map<String, dynamic> userData)  $default,) {final _that = this;
switch (_that) {
case _ChatRequestBody():
return $default(_that.chatContent,_that.chatHistory,_that.userData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'chat_content')  String chatContent, @JsonKey(name: 'chat_history')  List<String> chatHistory, @JsonKey(name: 'user_data')  Map<String, dynamic> userData)?  $default,) {final _that = this;
switch (_that) {
case _ChatRequestBody() when $default != null:
return $default(_that.chatContent,_that.chatHistory,_that.userData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRequestBody implements ChatRequestBody {
  const _ChatRequestBody({@JsonKey(name: 'chat_content') required this.chatContent, @JsonKey(name: 'chat_history') required final  List<String> chatHistory, @JsonKey(name: 'user_data') required final  Map<String, dynamic> userData}): _chatHistory = chatHistory,_userData = userData;
  factory _ChatRequestBody.fromJson(Map<String, dynamic> json) => _$ChatRequestBodyFromJson(json);

@override@JsonKey(name: 'chat_content') final  String chatContent;
 final  List<String> _chatHistory;
@override@JsonKey(name: 'chat_history') List<String> get chatHistory {
  if (_chatHistory is EqualUnmodifiableListView) return _chatHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatHistory);
}

 final  Map<String, dynamic> _userData;
@override@JsonKey(name: 'user_data') Map<String, dynamic> get userData {
  if (_userData is EqualUnmodifiableMapView) return _userData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_userData);
}


/// Create a copy of ChatRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRequestBodyCopyWith<_ChatRequestBody> get copyWith => __$ChatRequestBodyCopyWithImpl<_ChatRequestBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRequestBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRequestBody&&(identical(other.chatContent, chatContent) || other.chatContent == chatContent)&&const DeepCollectionEquality().equals(other._chatHistory, _chatHistory)&&const DeepCollectionEquality().equals(other._userData, _userData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatContent,const DeepCollectionEquality().hash(_chatHistory),const DeepCollectionEquality().hash(_userData));

@override
String toString() {
  return 'ChatRequestBody(chatContent: $chatContent, chatHistory: $chatHistory, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$ChatRequestBodyCopyWith<$Res> implements $ChatRequestBodyCopyWith<$Res> {
  factory _$ChatRequestBodyCopyWith(_ChatRequestBody value, $Res Function(_ChatRequestBody) _then) = __$ChatRequestBodyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'chat_content') String chatContent,@JsonKey(name: 'chat_history') List<String> chatHistory,@JsonKey(name: 'user_data') Map<String, dynamic> userData
});




}
/// @nodoc
class __$ChatRequestBodyCopyWithImpl<$Res>
    implements _$ChatRequestBodyCopyWith<$Res> {
  __$ChatRequestBodyCopyWithImpl(this._self, this._then);

  final _ChatRequestBody _self;
  final $Res Function(_ChatRequestBody) _then;

/// Create a copy of ChatRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatContent = null,Object? chatHistory = null,Object? userData = null,}) {
  return _then(_ChatRequestBody(
chatContent: null == chatContent ? _self.chatContent : chatContent // ignore: cast_nullable_to_non_nullable
as String,chatHistory: null == chatHistory ? _self._chatHistory : chatHistory // ignore: cast_nullable_to_non_nullable
as List<String>,userData: null == userData ? _self._userData : userData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
