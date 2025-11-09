import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/login.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';
import 'package:kit/features/auth/domain/usecases/register_usecase.dart';
import 'package:kit/shared/constants/enum/auth.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

// BLoC
@singleton
class AuthBloc extends HydratedBloc <AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;
  final RegisterUseCase registerUseCase;

  AuthBloc({
    required this.loginUseCase,
    required this.logoutUseCase,
    required this.registerUseCase,
  }) : super(AuthState.unauthenticated()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case LoginRequested(:final email, :final password):
          await _onLoginRequested(email, password, emit);
        case LogoutRequested():
          await _onLogoutRequested(emit);
        case CheckAuthStatus():
          await _onCheckAuthStatus(emit);
        case SendOtpRequested(:final email):
          await _onSendOtpRequested(email, emit);
          break;
        case RegisterRequested(:final name, :final email, :final password, :final confirmPassword, :final code):
          await _onRegisterRequested(name, email, password, confirmPassword, code, emit);
          break;
      }
    });
  }

  Future<void> _onSendOtpRequested(
    String email,
    Emitter<AuthState> emit,
  ) async {

    // Validation input fields
    if (email.isEmpty) {
      emit(AuthState.sendOtpEmailValidation(
        email: 'Email cannot be empty',
      ));
      return;
    }
    if(!_validateEmail(email)) {
      emit(AuthState.sendOtpEmailValidation(
        email: 'Invalid email format',
      ));
      return;
    }
    emit(const AuthState.otpSent(isLoading: true));
  
    final result = await registerUseCase.sendOtp(SendOtp(email: email, type: AuthType.REGISTER.name));
    result.fold(
      (error) {
        return emit(AuthState.error(sentOptMessage: error, loginMessage: null, registerMessage: null, logoutMessage: null));
      },
      (success) => emit(const AuthState.otpSent(isLoading: false)),
    );
    
  }

  Future<void> _onRegisterRequested(
    String name,
    String email,
    String password,
    String confirmPassword,
    String code,
    Emitter<AuthState> emit,
  ) async {
    
    // Validation input fields
    if (name.isEmpty || password.isEmpty || confirmPassword.isEmpty || code.isEmpty) {
      emit(AuthState.registerValidation(
        name: name.isEmpty ? 'Name cannot be empty' : null,
        password: password.isEmpty ? 'Password cannot be empty' : null,
        confirmPassword: confirmPassword.isEmpty ? 'Confirm Password cannot be empty' : null,
        code: code.isEmpty ? 'Verification code cannot be empty' : null,
      ));
      return;
    }
    if(!_validatePassword(password)) {
      emit(AuthState.registerValidation(
        name: null,
        password: 'Password must be at least 6 characters',
        confirmPassword: null,
        code: null,
      ));
      return;
    }
    if (confirmPassword != password) {
      emit(AuthState.registerValidation(
        name: null,
        password: null,
        confirmPassword: 'Passwords do not match',
        code: null,
      ));
      return;
    }

    emit(const AuthState.register(isLoading: true));
   
    final result = await registerUseCase.register(
      Register(
        fullName: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        code: code,
      ),
    );
    result.fold(
      (error) {
        return emit(AuthState.registerValidation(code: error));
      },
      (success) => emit(const AuthState.register(isLoading: false)),
    );
    
  }

  Future<void> _onLoginRequested(
    String email,
    String password,
    Emitter<AuthState> emit,
  ) async {

    // Validation input fields
    if (email.isEmpty || password.isEmpty) {
      emit(AuthState.loginValidation(
        email: email.isEmpty ? 'Email cannot be empty' : null,
        password: password.isEmpty ? 'Password cannot be empty' : null,
      ));
      return;
    }
    if(!_validateEmail(email) || !_validatePassword(password)) {
      emit(AuthState.loginValidation(
        email: !_validateEmail(email) ? 'Invalid email format' : null,
        password: !_validatePassword(password) ? 'Password must be at least 6 characters' : null,
      ));
      return;
    }

    emit(const AuthState.login(isLoading: true));
    
    final result = await loginUseCase(
      Login(
        email: email,
        password: password,
      ),
    );
    result.fold(
      (error) => emit(AuthState.error(loginMessage: error, logoutMessage: null, registerMessage: null, sentOptMessage: null)),
      (token) {
        emit(AuthState.login(isLoading: false));
        emit(AuthState.authenticated());
      },
    );
  }

  Future<void> _onLogoutRequested(
    Emitter<AuthState> emit,
  ) async {
    final result = await logoutUseCase();
    result.fold(
      (error) => emit(AuthState.error(logoutMessage: error, loginMessage: null, registerMessage: null, sentOptMessage: null)),
      (success) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _onCheckAuthStatus(
    Emitter<AuthState> emit,
  ) async {
    // Check authentication status logic here
    emit(const AuthState.unauthenticated());
  }
  bool _validateEmail(String email) {
    final regex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }

  bool _validatePassword(String password) {
    return password.length >= 6;
  }
  
  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    try {
      return AuthState.fromJson(json);
    } catch (e) {
      return const AuthState.unauthenticated();
    }
  }
  
  @override
  Map<String, dynamic>? toJson(AuthState state) {
    // Only persist authenticated state, not loading or error states
    return switch (state) {
      AuthAuthenticated() => state.toJson(),
      AuthUnauthenticated() => state.toJson(),
      _ => null, // Don't persist loading, error, or initial states
    };
  }
}
