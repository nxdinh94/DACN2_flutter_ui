import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/register.dart';
import 'package:kit/features/auth/domain/entities/send_otp.dart';

import '../../domain/entities/user.dart';
import '../../../../core/network/dio_client.dart';

abstract class AuthRemoteDataSource {
  Future<User> login(String email, String password);
  Future<Either<String, bool>> register(Register model);
  Future<Either<String, bool>> sendOtp(SendOtp model);
  Future<void> logout();
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<User> login(String email, String password) async {
    try {
      // Mock implementation - replace with actual API call
      final response = await dioClient.get('https://jsonplaceholder.typicode.com/todos/1');
      print(response.data);
      // Mock response delay
      await Future.delayed(const Duration(seconds: 1));
      
      return User(
        id: '1',
        name: 'John Doe',
        email: email,
        lastSeen: DateTime.now(),
        isOnline: true,
      );
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  @override
  Future<Either<String, bool>> register(Register model) async {
    final result = await dioClient.post(
      '/api/auth/register',
      data: model.toJson(),
    );

    return result.fold(
      (error) => Left(error.toString()),
      (response) => Right(true),
    );
  }


  @override
  Future<void> logout() async {
    try {
      // Mock implementation - replace with actual API call
      // await dioClient.post('/auth/logout');
      
      // Mock response delay
      await Future.delayed(const Duration(milliseconds: 500));
    } catch (e) {
      throw Exception('Logout failed: $e');
    }
  }
  
  @override
  Future<Either<String, bool>> sendOtp(SendOtp model) async {
    final result = await dioClient.post(
      '/api/auth/otp',
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
