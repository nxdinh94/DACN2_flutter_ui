import 'package:fpdart/fpdart.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';

import '../entities/user.dart';


abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<Either<String, bool>> register(Register model);
  Future<Either<String, bool>> sendOtp(SendOtp model);
  Future<void> logout();
  Future<User?> getCurrentUser();
  Future<bool> isLoggedIn();
}
