// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatbot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatbotEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatbotEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatbotEvent()';
}


}

/// @nodoc
class $ChatbotEventCopyWith<$Res>  {
$ChatbotEventCopyWith(ChatbotEvent _, $Res Function(ChatbotEvent) __);
}


/// Adds pattern-matching-related methods to [ChatbotEvent].
extension ChatbotEventPatterns on ChatbotEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendMessage value)?  sendMessage,TResult Function( ClearChat value)?  clearChat,TResult Function( ChatBotInitial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendMessage() when sendMessage != null:
return sendMessage(_that);case ClearChat() when clearChat != null:
return clearChat(_that);case ChatBotInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendMessage value)  sendMessage,required TResult Function( ClearChat value)  clearChat,required TResult Function( ChatBotInitial value)  initial,}){
final _that = this;
switch (_that) {
case SendMessage():
return sendMessage(_that);case ClearChat():
return clearChat(_that);case ChatBotInitial():
return initial(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendMessage value)?  sendMessage,TResult? Function( ClearChat value)?  clearChat,TResult? Function( ChatBotInitial value)?  initial,}){
final _that = this;
switch (_that) {
case SendMessage() when sendMessage != null:
return sendMessage(_that);case ClearChat() when clearChat != null:
return clearChat(_that);case ChatBotInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  sendMessage,TResult Function()?  clearChat,TResult Function()?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendMessage() when sendMessage != null:
return sendMessage(_that.message);case ClearChat() when clearChat != null:
return clearChat();case ChatBotInitial() when initial != null:
return initial();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  sendMessage,required TResult Function()  clearChat,required TResult Function()  initial,}) {final _that = this;
switch (_that) {
case SendMessage():
return sendMessage(_that.message);case ClearChat():
return clearChat();case ChatBotInitial():
return initial();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  sendMessage,TResult? Function()?  clearChat,TResult? Function()?  initial,}) {final _that = this;
switch (_that) {
case SendMessage() when sendMessage != null:
return sendMessage(_that.message);case ClearChat() when clearChat != null:
return clearChat();case ChatBotInitial() when initial != null:
return initial();case _:
  return null;

}
}

}

/// @nodoc


class SendMessage implements ChatbotEvent {
  const SendMessage({required this.message});
  

 final  String message;

/// Create a copy of ChatbotEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageCopyWith<SendMessage> get copyWith => _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessage&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatbotEvent.sendMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $SendMessageCopyWith<$Res> implements $ChatbotEventCopyWith<$Res> {
  factory $SendMessageCopyWith(SendMessage value, $Res Function(SendMessage) _then) = _$SendMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SendMessageCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._self, this._then);

  final SendMessage _self;
  final $Res Function(SendMessage) _then;

/// Create a copy of ChatbotEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SendMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearChat implements ChatbotEvent {
  const ClearChat();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearChat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatbotEvent.clearChat()';
}


}




/// @nodoc


class ChatBotInitial implements ChatbotEvent {
  const ChatBotInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatBotInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatbotEvent.initial()';
}


}





/// @nodoc
mixin _$MyChatMessage {

@HiveField(0) String get id;@HiveField(1) String get content;@HiveField(2) String get role;@HiveField(3) DateTime get createdAt;
/// Create a copy of MyChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyChatMessageCopyWith<MyChatMessage> get copyWith => _$MyChatMessageCopyWithImpl<MyChatMessage>(this as MyChatMessage, _$identity);

  /// Serializes this MyChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,role,createdAt);

@override
String toString() {
  return 'MyChatMessage(id: $id, content: $content, role: $role, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MyChatMessageCopyWith<$Res>  {
  factory $MyChatMessageCopyWith(MyChatMessage value, $Res Function(MyChatMessage) _then) = _$MyChatMessageCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String content,@HiveField(2) String role,@HiveField(3) DateTime createdAt
});




}
/// @nodoc
class _$MyChatMessageCopyWithImpl<$Res>
    implements $MyChatMessageCopyWith<$Res> {
  _$MyChatMessageCopyWithImpl(this._self, this._then);

  final MyChatMessage _self;
  final $Res Function(MyChatMessage) _then;

/// Create a copy of MyChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? role = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MyChatMessage].
extension MyChatMessagePatterns on MyChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _MyChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _MyChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String content, @HiveField(2)  String role, @HiveField(3)  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyChatMessage() when $default != null:
return $default(_that.id,_that.content,_that.role,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String content, @HiveField(2)  String role, @HiveField(3)  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MyChatMessage():
return $default(_that.id,_that.content,_that.role,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String content, @HiveField(2)  String role, @HiveField(3)  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MyChatMessage() when $default != null:
return $default(_that.id,_that.content,_that.role,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _MyChatMessage extends MyChatMessage {
  const _MyChatMessage({@HiveField(0) required this.id, @HiveField(1) required this.content, @HiveField(2) required this.role, @HiveField(3) required this.createdAt}): super._();
  factory _MyChatMessage.fromJson(Map<String, dynamic> json) => _$MyChatMessageFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String content;
@override@HiveField(2) final  String role;
@override@HiveField(3) final  DateTime createdAt;

/// Create a copy of MyChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyChatMessageCopyWith<_MyChatMessage> get copyWith => __$MyChatMessageCopyWithImpl<_MyChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,role,createdAt);

@override
String toString() {
  return 'MyChatMessage(id: $id, content: $content, role: $role, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MyChatMessageCopyWith<$Res> implements $MyChatMessageCopyWith<$Res> {
  factory _$MyChatMessageCopyWith(_MyChatMessage value, $Res Function(_MyChatMessage) _then) = __$MyChatMessageCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String content,@HiveField(2) String role,@HiveField(3) DateTime createdAt
});




}
/// @nodoc
class __$MyChatMessageCopyWithImpl<$Res>
    implements _$MyChatMessageCopyWith<$Res> {
  __$MyChatMessageCopyWithImpl(this._self, this._then);

  final _MyChatMessage _self;
  final $Res Function(_MyChatMessage) _then;

/// Create a copy of MyChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? role = null,Object? createdAt = null,}) {
  return _then(_MyChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$ChatbotState {

 List<MyChatMessage> get messages; ChatbotStatus get status; String? get errorMessage;
/// Create a copy of ChatbotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatbotStateCopyWith<ChatbotState> get copyWith => _$ChatbotStateCopyWithImpl<ChatbotState>(this as ChatbotState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatbotState&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),status,errorMessage);

@override
String toString() {
  return 'ChatbotState(messages: $messages, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ChatbotStateCopyWith<$Res>  {
  factory $ChatbotStateCopyWith(ChatbotState value, $Res Function(ChatbotState) _then) = _$ChatbotStateCopyWithImpl;
@useResult
$Res call({
 List<MyChatMessage> messages, ChatbotStatus status, String? errorMessage
});




}
/// @nodoc
class _$ChatbotStateCopyWithImpl<$Res>
    implements $ChatbotStateCopyWith<$Res> {
  _$ChatbotStateCopyWithImpl(this._self, this._then);

  final ChatbotState _self;
  final $Res Function(ChatbotState) _then;

/// Create a copy of ChatbotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MyChatMessage>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatbotStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatbotState].
extension ChatbotStatePatterns on ChatbotState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatbotState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatbotState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatbotState value)  $default,){
final _that = this;
switch (_that) {
case _ChatbotState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatbotState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatbotState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MyChatMessage> messages,  ChatbotStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatbotState() when $default != null:
return $default(_that.messages,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MyChatMessage> messages,  ChatbotStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChatbotState():
return $default(_that.messages,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MyChatMessage> messages,  ChatbotStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChatbotState() when $default != null:
return $default(_that.messages,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChatbotState implements ChatbotState {
  const _ChatbotState({final  List<MyChatMessage> messages = const [], this.status = ChatbotStatus.idle, this.errorMessage}): _messages = messages;
  

 final  List<MyChatMessage> _messages;
@override@JsonKey() List<MyChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  ChatbotStatus status;
@override final  String? errorMessage;

/// Create a copy of ChatbotState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatbotStateCopyWith<_ChatbotState> get copyWith => __$ChatbotStateCopyWithImpl<_ChatbotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatbotState&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),status,errorMessage);

@override
String toString() {
  return 'ChatbotState(messages: $messages, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChatbotStateCopyWith<$Res> implements $ChatbotStateCopyWith<$Res> {
  factory _$ChatbotStateCopyWith(_ChatbotState value, $Res Function(_ChatbotState) _then) = __$ChatbotStateCopyWithImpl;
@override @useResult
$Res call({
 List<MyChatMessage> messages, ChatbotStatus status, String? errorMessage
});




}
/// @nodoc
class __$ChatbotStateCopyWithImpl<$Res>
    implements _$ChatbotStateCopyWith<$Res> {
  __$ChatbotStateCopyWithImpl(this._self, this._then);

  final _ChatbotState _self;
  final $Res Function(_ChatbotState) _then;

/// Create a copy of ChatbotState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_ChatbotState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MyChatMessage>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatbotStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
