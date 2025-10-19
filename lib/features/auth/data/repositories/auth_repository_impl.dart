import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<User> login(String email, String password) async {
    final user = await remoteDataSource.login(email, password);
    // Store user data and token

    return user;
  }

  @override
  Future<Either<String, bool>> register(Register model) async {
    final user = await remoteDataSource.register(model);
    
    return user.fold((e) => Left(e), (isRegistered) => Right(isRegistered));
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();

  }

  @override
  Future<User?> getCurrentUser() async {


  }

  @override
  Future<bool> isLoggedIn() async {
    throw Exception();
  }

  @override
  Future<Either<String, bool>> sendOtp(SendOtp model) async {
      final result = await remoteDataSource.sendOtp(model);
      return result.fold((e)=> Left(e), (onRight) => Right(onRight));
  }
}
