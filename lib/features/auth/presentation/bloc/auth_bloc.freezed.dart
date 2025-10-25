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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginRequested value)?  loginRequested,TResult Function( LogoutRequested value)?  logoutRequested,TResult Function( SendOtpRequested value)?  sendOtpRequested,TResult Function( RegisterRequested value)?  registerRequested,TResult Function( CheckAuthStatus value)?  checkAuthStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that);case RegisterRequested() when registerRequested != null:
return registerRequested(_that);case CheckAuthStatus() when checkAuthStatus != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginRequested value)  loginRequested,required TResult Function( LogoutRequested value)  logoutRequested,required TResult Function( SendOtpRequested value)  sendOtpRequested,required TResult Function( RegisterRequested value)  registerRequested,required TResult Function( CheckAuthStatus value)  checkAuthStatus,}){
final _that = this;
switch (_that) {
case LoginRequested():
return loginRequested(_that);case LogoutRequested():
return logoutRequested(_that);case SendOtpRequested():
return sendOtpRequested(_that);case RegisterRequested():
return registerRequested(_that);case CheckAuthStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginRequested value)?  loginRequested,TResult? Function( LogoutRequested value)?  logoutRequested,TResult? Function( SendOtpRequested value)?  sendOtpRequested,TResult? Function( RegisterRequested value)?  registerRequested,TResult? Function( CheckAuthStatus value)?  checkAuthStatus,}){
final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that);case RegisterRequested() when registerRequested != null:
return registerRequested(_that);case CheckAuthStatus() when checkAuthStatus != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  loginRequested,TResult Function()?  logoutRequested,TResult Function( String email)?  sendOtpRequested,TResult Function( String name,  String email,  String password,  String confirmPassword,  String phoneNumber,  String code)?  registerRequested,TResult Function()?  checkAuthStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that.email);case RegisterRequested() when registerRequested != null:
return registerRequested(_that.name,_that.email,_that.password,_that.confirmPassword,_that.phoneNumber,_that.code);case CheckAuthStatus() when checkAuthStatus != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  loginRequested,required TResult Function()  logoutRequested,required TResult Function( String email)  sendOtpRequested,required TResult Function( String name,  String email,  String password,  String confirmPassword,  String phoneNumber,  String code)  registerRequested,required TResult Function()  checkAuthStatus,}) {final _that = this;
switch (_that) {
case LoginRequested():
return loginRequested(_that.email,_that.password);case LogoutRequested():
return logoutRequested();case SendOtpRequested():
return sendOtpRequested(_that.email);case RegisterRequested():
return registerRequested(_that.name,_that.email,_that.password,_that.confirmPassword,_that.phoneNumber,_that.code);case CheckAuthStatus():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  loginRequested,TResult? Function()?  logoutRequested,TResult? Function( String email)?  sendOtpRequested,TResult? Function( String name,  String email,  String password,  String confirmPassword,  String phoneNumber,  String code)?  registerRequested,TResult? Function()?  checkAuthStatus,}) {final _that = this;
switch (_that) {
case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that.email);case RegisterRequested() when registerRequested != null:
return registerRequested(_that.name,_that.email,_that.password,_that.confirmPassword,_that.phoneNumber,_that.code);case CheckAuthStatus() when checkAuthStatus != null:
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


class SendOtpRequested implements AuthEvent {
  const SendOtpRequested({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpRequestedCopyWith<SendOtpRequested> get copyWith => _$SendOtpRequestedCopyWithImpl<SendOtpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.sendOtpRequested(email: $email)';
}


}

/// @nodoc
abstract mixin class $SendOtpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SendOtpRequestedCopyWith(SendOtpRequested value, $Res Function(SendOtpRequested) _then) = _$SendOtpRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$SendOtpRequestedCopyWithImpl<$Res>
    implements $SendOtpRequestedCopyWith<$Res> {
  _$SendOtpRequestedCopyWithImpl(this._self, this._then);

  final SendOtpRequested _self;
  final $Res Function(SendOtpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(SendOtpRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterRequested implements AuthEvent {
  const RegisterRequested({required this.name, required this.email, required this.password, required this.confirmPassword, required this.phoneNumber, required this.code});
  

 final  String name;
 final  String email;
 final  String password;
 final  String confirmPassword;
 final  String phoneNumber;
 final  String code;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestedCopyWith<RegisterRequested> get copyWith => _$RegisterRequestedCopyWithImpl<RegisterRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequested&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password,confirmPassword,phoneNumber,code);

@override
String toString() {
  return 'AuthEvent.registerRequested(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, phoneNumber: $phoneNumber, code: $code)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterRequestedCopyWith(RegisterRequested value, $Res Function(RegisterRequested) _then) = _$RegisterRequestedCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String confirmPassword, String phoneNumber, String code
});




}
/// @nodoc
class _$RegisterRequestedCopyWithImpl<$Res>
    implements $RegisterRequestedCopyWith<$Res> {
  _$RegisterRequestedCopyWithImpl(this._self, this._then);

  final RegisterRequested _self;
  final $Res Function(RegisterRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? confirmPassword = null,Object? phoneNumber = null,Object? code = null,}) {
  return _then(RegisterRequested(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
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
                case 'otpSent':
          return AuthOtpSent.fromJson(
            json
          );
                case 'register':
          return AuthRegister.fromJson(
            json
          );
                case 'login':
          return AuthLogin.fromJson(
            json
          );
                case 'logout':
          return AuthLogout.fromJson(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthLoading value)?  loading,TResult Function( AuthAuthenticated value)?  authenticated,TResult Function( AuthUnauthenticated value)?  unauthenticated,TResult Function( AuthOtpSent value)?  otpSent,TResult Function( AuthRegister value)?  register,TResult Function( AuthLogin value)?  login,TResult Function( AuthLogout value)?  logout,TResult Function( AuthError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthOtpSent() when otpSent != null:
return otpSent(_that);case AuthRegister() when register != null:
return register(_that);case AuthLogin() when login != null:
return login(_that);case AuthLogout() when logout != null:
return logout(_that);case AuthError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthLoading value)  loading,required TResult Function( AuthAuthenticated value)  authenticated,required TResult Function( AuthUnauthenticated value)  unauthenticated,required TResult Function( AuthOtpSent value)  otpSent,required TResult Function( AuthRegister value)  register,required TResult Function( AuthLogin value)  login,required TResult Function( AuthLogout value)  logout,required TResult Function( AuthError value)  error,}){
final _that = this;
switch (_that) {
case AuthLoading():
return loading(_that);case AuthAuthenticated():
return authenticated(_that);case AuthUnauthenticated():
return unauthenticated(_that);case AuthOtpSent():
return otpSent(_that);case AuthRegister():
return register(_that);case AuthLogin():
return login(_that);case AuthLogout():
return logout(_that);case AuthError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthLoading value)?  loading,TResult? Function( AuthAuthenticated value)?  authenticated,TResult? Function( AuthUnauthenticated value)?  unauthenticated,TResult? Function( AuthOtpSent value)?  otpSent,TResult? Function( AuthRegister value)?  register,TResult? Function( AuthLogin value)?  login,TResult? Function( AuthLogout value)?  logout,TResult? Function( AuthError value)?  error,}){
final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthOtpSent() when otpSent != null:
return otpSent(_that);case AuthRegister() when register != null:
return register(_that);case AuthLogin() when login != null:
return login(_that);case AuthLogout() when logout != null:
return logout(_that);case AuthError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  authenticated,TResult Function()?  unauthenticated,TResult Function( bool isLoading)?  otpSent,TResult Function( bool isLoading)?  register,TResult Function( bool isLoading)?  login,TResult Function( bool isLoading)?  logout,TResult Function( String? sentOptMessage,  String? registerMessage,  String? loginMessage,  String? logoutMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated();case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated();case AuthOtpSent() when otpSent != null:
return otpSent(_that.isLoading);case AuthRegister() when register != null:
return register(_that.isLoading);case AuthLogin() when login != null:
return login(_that.isLoading);case AuthLogout() when logout != null:
return logout(_that.isLoading);case AuthError() when error != null:
return error(_that.sentOptMessage,_that.registerMessage,_that.loginMessage,_that.logoutMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  authenticated,required TResult Function()  unauthenticated,required TResult Function( bool isLoading)  otpSent,required TResult Function( bool isLoading)  register,required TResult Function( bool isLoading)  login,required TResult Function( bool isLoading)  logout,required TResult Function( String? sentOptMessage,  String? registerMessage,  String? loginMessage,  String? logoutMessage)  error,}) {final _that = this;
switch (_that) {
case AuthLoading():
return loading();case AuthAuthenticated():
return authenticated();case AuthUnauthenticated():
return unauthenticated();case AuthOtpSent():
return otpSent(_that.isLoading);case AuthRegister():
return register(_that.isLoading);case AuthLogin():
return login(_that.isLoading);case AuthLogout():
return logout(_that.isLoading);case AuthError():
return error(_that.sentOptMessage,_that.registerMessage,_that.loginMessage,_that.logoutMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( bool isLoading)?  otpSent,TResult? Function( bool isLoading)?  register,TResult? Function( bool isLoading)?  login,TResult? Function( bool isLoading)?  logout,TResult? Function( String? sentOptMessage,  String? registerMessage,  String? loginMessage,  String? logoutMessage)?  error,}) {final _that = this;
switch (_that) {
case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated();case AuthUnauthenticated() when unauthenticated != null:
return unauthenticated();case AuthOtpSent() when otpSent != null:
return otpSent(_that.isLoading);case AuthRegister() when register != null:
return register(_that.isLoading);case AuthLogin() when login != null:
return login(_that.isLoading);case AuthLogout() when logout != null:
return logout(_that.isLoading);case AuthError() when error != null:
return error(_that.sentOptMessage,_that.registerMessage,_that.loginMessage,_that.logoutMessage);case _:
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
  const AuthAuthenticated({final  String? $type}): $type = $type ?? 'authenticated';
  factory AuthAuthenticated.fromJson(Map<String, dynamic> json) => _$AuthAuthenticatedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$AuthAuthenticatedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthAuthenticated);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.authenticated()';
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

class AuthOtpSent implements AuthState {
  const AuthOtpSent({required this.isLoading, final  String? $type}): $type = $type ?? 'otpSent';
  factory AuthOtpSent.fromJson(Map<String, dynamic> json) => _$AuthOtpSentFromJson(json);

 final  bool isLoading;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthOtpSentCopyWith<AuthOtpSent> get copyWith => _$AuthOtpSentCopyWithImpl<AuthOtpSent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthOtpSentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthOtpSent&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AuthState.otpSent(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AuthOtpSentCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthOtpSentCopyWith(AuthOtpSent value, $Res Function(AuthOtpSent) _then) = _$AuthOtpSentCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$AuthOtpSentCopyWithImpl<$Res>
    implements $AuthOtpSentCopyWith<$Res> {
  _$AuthOtpSentCopyWithImpl(this._self, this._then);

  final AuthOtpSent _self;
  final $Res Function(AuthOtpSent) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(AuthOtpSent(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AuthRegister implements AuthState {
  const AuthRegister({required this.isLoading, final  String? $type}): $type = $type ?? 'register';
  factory AuthRegister.fromJson(Map<String, dynamic> json) => _$AuthRegisterFromJson(json);

 final  bool isLoading;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRegisterCopyWith<AuthRegister> get copyWith => _$AuthRegisterCopyWithImpl<AuthRegister>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRegisterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRegister&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AuthState.register(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AuthRegisterCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthRegisterCopyWith(AuthRegister value, $Res Function(AuthRegister) _then) = _$AuthRegisterCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$AuthRegisterCopyWithImpl<$Res>
    implements $AuthRegisterCopyWith<$Res> {
  _$AuthRegisterCopyWithImpl(this._self, this._then);

  final AuthRegister _self;
  final $Res Function(AuthRegister) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(AuthRegister(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AuthLogin implements AuthState {
  const AuthLogin({required this.isLoading, final  String? $type}): $type = $type ?? 'login';
  factory AuthLogin.fromJson(Map<String, dynamic> json) => _$AuthLoginFromJson(json);

 final  bool isLoading;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLoginCopyWith<AuthLogin> get copyWith => _$AuthLoginCopyWithImpl<AuthLogin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthLoginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLogin&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AuthState.login(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AuthLoginCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthLoginCopyWith(AuthLogin value, $Res Function(AuthLogin) _then) = _$AuthLoginCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$AuthLoginCopyWithImpl<$Res>
    implements $AuthLoginCopyWith<$Res> {
  _$AuthLoginCopyWithImpl(this._self, this._then);

  final AuthLogin _self;
  final $Res Function(AuthLogin) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(AuthLogin(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AuthLogout implements AuthState {
  const AuthLogout({required this.isLoading, final  String? $type}): $type = $type ?? 'logout';
  factory AuthLogout.fromJson(Map<String, dynamic> json) => _$AuthLogoutFromJson(json);

 final  bool isLoading;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLogoutCopyWith<AuthLogout> get copyWith => _$AuthLogoutCopyWithImpl<AuthLogout>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthLogoutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLogout&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AuthState.logout(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AuthLogoutCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthLogoutCopyWith(AuthLogout value, $Res Function(AuthLogout) _then) = _$AuthLogoutCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class _$AuthLogoutCopyWithImpl<$Res>
    implements $AuthLogoutCopyWith<$Res> {
  _$AuthLogoutCopyWithImpl(this._self, this._then);

  final AuthLogout _self;
  final $Res Function(AuthLogout) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(AuthLogout(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class AuthError implements AuthState {
  const AuthError({this.sentOptMessage, this.registerMessage, this.loginMessage, this.logoutMessage, final  String? $type}): $type = $type ?? 'error';
  factory AuthError.fromJson(Map<String, dynamic> json) => _$AuthErrorFromJson(json);

 final  String? sentOptMessage;
 final  String? registerMessage;
 final  String? loginMessage;
 final  String? logoutMessage;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthError&&(identical(other.sentOptMessage, sentOptMessage) || other.sentOptMessage == sentOptMessage)&&(identical(other.registerMessage, registerMessage) || other.registerMessage == registerMessage)&&(identical(other.loginMessage, loginMessage) || other.loginMessage == loginMessage)&&(identical(other.logoutMessage, logoutMessage) || other.logoutMessage == logoutMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sentOptMessage,registerMessage,loginMessage,logoutMessage);

@override
String toString() {
  return 'AuthState.error(sentOptMessage: $sentOptMessage, registerMessage: $registerMessage, loginMessage: $loginMessage, logoutMessage: $logoutMessage)';
}


}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) = _$AuthErrorCopyWithImpl;
@useResult
$Res call({
 String? sentOptMessage, String? registerMessage, String? loginMessage, String? logoutMessage
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
@pragma('vm:prefer-inline') $Res call({Object? sentOptMessage = freezed,Object? registerMessage = freezed,Object? loginMessage = freezed,Object? logoutMessage = freezed,}) {
  return _then(AuthError(
sentOptMessage: freezed == sentOptMessage ? _self.sentOptMessage : sentOptMessage // ignore: cast_nullable_to_non_nullable
as String?,registerMessage: freezed == registerMessage ? _self.registerMessage : registerMessage // ignore: cast_nullable_to_non_nullable
as String?,loginMessage: freezed == loginMessage ? _self.loginMessage : loginMessage // ignore: cast_nullable_to_non_nullable
as String?,logoutMessage: freezed == logoutMessage ? _self.logoutMessage : logoutMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
