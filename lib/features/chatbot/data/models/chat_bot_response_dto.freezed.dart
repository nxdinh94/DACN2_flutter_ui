// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBotResponseDto {

 List<String> get conversation;
/// Create a copy of ChatBotResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatBotResponseDtoCopyWith<ChatBotResponseDto> get copyWith => _$ChatBotResponseDtoCopyWithImpl<ChatBotResponseDto>(this as ChatBotResponseDto, _$identity);

  /// Serializes this ChatBotResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatBotResponseDto&&const DeepCollectionEquality().equals(other.conversation, conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(conversation));

@override
String toString() {
  return 'ChatBotResponseDto(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class $ChatBotResponseDtoCopyWith<$Res>  {
  factory $ChatBotResponseDtoCopyWith(ChatBotResponseDto value, $Res Function(ChatBotResponseDto) _then) = _$ChatBotResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<String> conversation
});




}
/// @nodoc
class _$ChatBotResponseDtoCopyWithImpl<$Res>
    implements $ChatBotResponseDtoCopyWith<$Res> {
  _$ChatBotResponseDtoCopyWithImpl(this._self, this._then);

  final ChatBotResponseDto _self;
  final $Res Function(ChatBotResponseDto) _then;

/// Create a copy of ChatBotResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation = null,}) {
  return _then(_self.copyWith(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatBotResponseDto].
extension ChatBotResponseDtoPatterns on ChatBotResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatBotResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatBotResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatBotResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatBotResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatBotResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatBotResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> conversation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatBotResponseDto() when $default != null:
return $default(_that.conversation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> conversation)  $default,) {final _that = this;
switch (_that) {
case _ChatBotResponseDto():
return $default(_that.conversation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> conversation)?  $default,) {final _that = this;
switch (_that) {
case _ChatBotResponseDto() when $default != null:
return $default(_that.conversation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatBotResponseDto implements ChatBotResponseDto {
  const _ChatBotResponseDto({required final  List<String> conversation}): _conversation = conversation;
  factory _ChatBotResponseDto.fromJson(Map<String, dynamic> json) => _$ChatBotResponseDtoFromJson(json);

 final  List<String> _conversation;
@override List<String> get conversation {
  if (_conversation is EqualUnmodifiableListView) return _conversation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversation);
}


/// Create a copy of ChatBotResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatBotResponseDtoCopyWith<_ChatBotResponseDto> get copyWith => __$ChatBotResponseDtoCopyWithImpl<_ChatBotResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatBotResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatBotResponseDto&&const DeepCollectionEquality().equals(other._conversation, _conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_conversation));

@override
String toString() {
  return 'ChatBotResponseDto(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class _$ChatBotResponseDtoCopyWith<$Res> implements $ChatBotResponseDtoCopyWith<$Res> {
  factory _$ChatBotResponseDtoCopyWith(_ChatBotResponseDto value, $Res Function(_ChatBotResponseDto) _then) = __$ChatBotResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> conversation
});




}
/// @nodoc
class __$ChatBotResponseDtoCopyWithImpl<$Res>
    implements _$ChatBotResponseDtoCopyWith<$Res> {
  __$ChatBotResponseDtoCopyWithImpl(this._self, this._then);

  final _ChatBotResponseDto _self;
  final $Res Function(_ChatBotResponseDto) _then;

/// Create a copy of ChatBotResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation = null,}) {
  return _then(_ChatBotResponseDto(
conversation: null == conversation ? _self._conversation : conversation // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
