import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Future<User> register(String name, String email, String password) async {
    final user = await remoteDataSource.register(name, email, password);
    // Store user data and token

    return user;
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
}
