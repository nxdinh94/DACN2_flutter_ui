import 'package:fpdart/fpdart.dart';
import 'package:kit/features/auth/domain/entities/login.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';

import '../entities/user.dart';


abstract class AuthRepository {
  Future<Either<String, bool>> login(Login model);
  Future<Either<String, bool>> register(Register model);
  Future<Either<String, bool>> sendOtp(SendOtp model);
  Future<Either<String, bool>> logout();
  Future<User?> getCurrentUser();
  Future<bool> isLoggedIn();
}
