import 'package:injectable/injectable.dart';

import '../../domain/entities/user.dart';
import '../../../../core/network/dio_client.dart';

abstract class AuthRemoteDataSource {
  Future<User> login(String email, String password);
  Future<User> register(String name, String email, String password);
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
  Future<User> register(String name, String email, String password) async {
    try {
      // Mock implementation - replace with actual API call
      // final response = await dioClient.post('/auth/register', data: {
      //   'name': name,
      //   'email': email,
      //   'password': password,
      // });
      
      // Mock response delay
      await Future.delayed(const Duration(seconds: 1));
      
      return User(
        id: '1',
        name: name,
        email: email,
        lastSeen: DateTime.now(),
        isOnline: true,
      );
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
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
}
