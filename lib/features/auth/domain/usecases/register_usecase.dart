

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';

import '../repositories/auth_repository.dart';

@injectable
class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<Either<String, bool>> sendOtp(SendOtp model) {
    return repository.sendOtp(model);
  }
  Future<Either<String, bool>> register(Register model) {
    return repository.register(model);
  }
}