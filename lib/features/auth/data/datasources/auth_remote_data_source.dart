import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/utils/app_utils.dart';
import 'package:kit/features/auth/data/models/auth_token_dto.dart';
import 'package:kit/features/auth/domain/entities/login.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';
import '../../../../core/network/dio_client.dart';

abstract class AuthRemoteDataSource {
  Future<Either<String, AuthTokenDto>> login(Login model);
  Future<Either<String, bool>> register(Register model);
  Future<Either<String, bool>> sendOtp(SendOtp model);
  Future<Either<String, bool>> logout(String refreshToken);
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<String, AuthTokenDto>> login(Login model) async {
    final result = await dioClient.post(
      AppConstants.loginEndpoint,
      data: model.toJson(),
    );
  
    return result.fold(
      (error) {
        return Left('Invalid email or password');
      },
      (response) => Right(AuthTokenDto.fromJson(response.data['data'])),
    );
  }

  @override
  Future<Either<String, bool>> register(Register model) async {
    final result = await dioClient.post(
      AppConstants.registerEndpoint,
      data: model.toJson(),
    );

    return result.fold(
      (error) => Left('OTP is invalid or expired'),
      (response) => Right(true),
    );
  }


  @override
  Future<Either<String, bool>> logout(String refreshToken) async {
    try {
      final result = await dioClient.post(AppConstants.logoutEndpoint, data: {'refreshToken': refreshToken});
      return result.fold(
        (error) => Left('Logout failed: $error'),
        (response) => Right(true),
      );
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }
  
  @override
  Future<Either<String, bool>> sendOtp(SendOtp model) async {
    final result = await dioClient.post(
      AppConstants.sendOtpEndpoint,
      data: model.toJson(),
    );

    return result.fold(
      (error) {
        return Left('This email is already registered');
      },
      (response) => Right(true),
    );
  }
}
