// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginRequested value)?  loginRequested,TResult Function( LogoutRequested value)?  logoutRequested,TResult Function( CheckAuthStatus value)?  checkAuthStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginRequested value)  loginRequested,required TResult Function( LogoutRequested value)  logoutRequested,required TResult Function( CheckAuthStatus value)  checkAuthStatus,}){
final _that = this;
switch (_that) {
case LoginRequested():
return loginRequested(_that);case LogoutRequested():
return logoutRequested(_that);case CheckAuthStatus():
return checkAuthStatus(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginRequested value)?  loginRequested,TResult? Function( LogoutRequested value)?  logoutRequested,TResult? Function( CheckAuthStatus value)?  checkAuthStatus,}){
final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginRequested,TResult Function()?  logoutRequested,TResult Function()?  checkAuthStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginRequested,required TResult Function()  logoutRequested,required TResult Function()  checkAuthStatus,}) {final _that = this;
switch (_that) {
case LoginRequested():
return loginRequested(_that.email,_that.password);case LogoutRequested():
return logoutRequested();case CheckAuthStatus():
return checkAuthStatus();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginRequested,TResult? Function()?  logoutRequested,TResult? Function()?  checkAuthStatus,}) {final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
  return null;

}
}

}

/// @nodoc


class LoginRequested implements AuthEvent {
  const LoginRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestedCopyWith<LoginRequested> get copyWith => _$LoginRequestedCopyWithImpl<LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginRequestedCopyWith(LoginRequested value, $Res Function(LoginRequested) _then) = _$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginRequestedCopyWithImpl<$Res>
    implements $LoginRequestedCopyWith<$Res> {
  _$LoginRequestedCopyWithImpl(this._self, this._then);

  final LoginRequested _self;
  final $Res Function(LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(LoginRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LogoutRequested implements AuthEvent {
  const LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutRequested()';
}


}




/// @nodoc


class CheckAuthStatus implements AuthEvent {
  const CheckAuthStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAuthStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuthStatus()';
}


}




AuthState _$AuthStateFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'loading':
          return AuthLoading.fromJson(
            json
          );
                case 'authenticated':
          return AuthAuthenticated.fromJson(
            json
          );
                case 'unauthenticated':
          return AuthUnauthenticated.fromJson(
            json
          );
                case 'error':
          return AuthError.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'AuthState',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$AuthState {



  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthLoading value)?  loading,TResult Function( AuthAuthenticated value)?  authenticated,TResult Function( AuthUnauthenticated value)?  unauthenticated,TResult Function( AuthError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthLoading value)  loading,required TResult Function( AuthAuthenticated value)  authenticated,required TResult Function( AuthUnauthenticated value)  unauthenticated,required TResult Function( AuthError value)  error,}){
final _that = this;
switch (_that) {
case AuthLoading():
return loading(_that);case AuthAuthenticated():
return authenticated(_that);case AuthUnauthenticated():
return unauthenticated(_that);case AuthError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthLoading value)?  loading,TResult? Function( AuthAuthenticated value)?  authenticated,TResult? Function( AuthUnauthenticated value)?  unauthenticated,TResult? Function( AuthError value)?  error,}){
final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( User user)?  authenticated,TResult Function()?  unauthenticated,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated(_that.user);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated();case AuthError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( User user)  authenticated,required TResult Function()  unauthenticated,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AuthLoading():
return loading();case AuthAuthenticated():
return authenticated(_that.user);case AuthUnauthenticated():
return unauthenticated();case AuthError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( User user)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated(_that.user);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated();case AuthError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class AuthLoading implements AuthState {
  const AuthLoading({final  String? $type}): $type = $type ?? 'loading';
  factory AuthLoading.fromJson(Map<String, dynamic> json) => _$AuthLoadingFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AuthLoadingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoading);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc
@JsonSerializable()

class AuthAuthenticated implements AuthState {
  const AuthAuthenticated(this.user, {final  String? $type}): $type = $type ?? 'authenticated';
  factory AuthAuthenticated.fromJson(Map<String, dynamic> json) => _$AuthAuthenticatedFromJson(json);

 final  User user;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith => _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthAuthenticatedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthAuthenticated&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthAuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(AuthAuthenticated value, $Res Function(AuthAuthenticated) _then) = _$AuthAuthenticatedCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthAuthenticated _self;
  final $Res Function(AuthAuthenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(AuthAuthenticated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class AuthUnauthenticated implements AuthState {
  const AuthUnauthenticated({final  String? $type}): $type = $type ?? 'unauthenticated';
  factory AuthUnauthenticated.fromJson(Map<String, dynamic> json) => _$AuthUnauthenticatedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AuthUnauthenticatedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUnauthenticated);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc
@JsonSerializable()

class AuthError implements AuthState {
  const AuthError(this.message, {final  String? $type}): $type = $type ?? 'error';
  factory AuthError.fromJson(Map<String, dynamic> json) => _$AuthErrorFromJson(json);

 final  String message;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthErrorCopyWith<AuthError> get copyWith => _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthError&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) = _$AuthErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthErrorCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
