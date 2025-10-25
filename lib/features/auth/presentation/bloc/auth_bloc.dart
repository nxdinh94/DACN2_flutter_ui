import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/auth_token_entity.dart';
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
        case RegisterRequested(:final name, :final email, :final password, :final confirmPassword, :final phoneNumber, :final code):
          await _onRegisterRequested(name, email, password, confirmPassword, phoneNumber, code, emit);
          break;
        case CheckAuthStatus():
          await _onCheckAuthStatus(emit);
      }
    });
  }

  Future<void> _onSendOtpRequested(
    String email,
    Emitter<AuthState> emit,
  ) async {
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
    String phoneNumber,
    String code,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.register(isLoading: true));
   
    final result = await registerUseCase.register(
      Register(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        phoneNumber: phoneNumber,
        code: code,
      ),
    );
    result.fold(
      (error) {
        return emit(AuthState.error(registerMessage: error, loginMessage: null, logoutMessage: null, sentOptMessage: null));
      },
      (success) => emit(const AuthState.register(isLoading: false)),
    );
    
  }

  Future<void> _onLoginRequested(
    String email,
    String password,
    Emitter<AuthState> emit,
  ) async {
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
      (error) {
        print('Logout error1: $error');
        emit(AuthState.error(logoutMessage: error, loginMessage: null, registerMessage: null, sentOptMessage: null));
      },
      (success) => emit(const AuthState.unauthenticated()),
    );
  }

  Future<void> _onCheckAuthStatus(
    Emitter<AuthState> emit,
  ) async {
    // Check authentication status logic here
    emit(const AuthState.unauthenticated());
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
