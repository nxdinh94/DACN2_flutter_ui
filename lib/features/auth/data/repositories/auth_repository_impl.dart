import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/logger/logger.dart';
import 'package:kit/core/utils/auth_token_services.dart';
import 'package:kit/features/auth/domain/entities/login.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthTokenServices authTokenServices;

  final AppLogger _appLogger = AppLogger();

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.authTokenServices,
  });

  @override
  Future<Either<String, bool>> login(Login model) async {
    final result = await remoteDataSource.login(model);
    return result.fold(
      (error) => Left(error),
      (authTokenDto) async {
        _appLogger.info('Access Token: ${authTokenDto.accessToken}');
        await authTokenServices.saveAccessToken(authTokenDto.accessToken);
        await authTokenServices.saveRefreshToken(authTokenDto.refreshToken);
        return Right(true);
      },
    );
  }

  @override
  Future<Either<String, bool>> register(Register model) async {
    final user = await remoteDataSource.register(model);
    return user.fold((e) => Left(e), (isRegistered) => Right(isRegistered));
  }

  @override
  Future<Either<String, bool>> logout() async {

    String refreshToken = await authTokenServices.getRefreshToken() ?? '';

    final result = await remoteDataSource.logout(refreshToken);
    return result.fold(
      (error) => Left('Logout went wrong'),
      (isLoggedOut) async {
        await authTokenServices.deleteBothToken();
        return Right(isLoggedOut);
      },
    );
  }

  @override
  Future<User?> getCurrentUser() async {
    throw Exception('');
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
