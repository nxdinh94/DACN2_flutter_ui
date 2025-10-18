import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@injectable
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final SharedPreferences sharedPreferences;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.sharedPreferences,
  });

  @override
  Future<User> login(String email, String password) async {
    final user = await remoteDataSource.login(email, password);
    // Store user data and token
    await sharedPreferences.setString('user_id', user.id);
    await sharedPreferences.setString('user_email', user.email);
    return user;
  }

  @override
  Future<User> register(String name, String email, String password) async {
    final user = await remoteDataSource.register(name, email, password);
    // Store user data and token
    await sharedPreferences.setString('user_id', user.id);
    await sharedPreferences.setString('user_email', user.email);
    return user;
  }

  @override
  Future<void> logout() async {
    await remoteDataSource.logout();
    // Clear stored data
    await sharedPreferences.remove('user_id');
    await sharedPreferences.remove('user_email');
  }

  @override
  Future<User?> getCurrentUser() async {
    final userId = sharedPreferences.getString('user_id');
    final userEmail = sharedPreferences.getString('user_email');
    
    if (userId != null && userEmail != null) {
      return User(
        id: userId,
        name: 'Current User', // This would come from stored data
        email: userEmail,
        lastSeen: DateTime.now(),
        isOnline: true,
      );
    }
    return null;
  }

  @override
  Future<bool> isLoggedIn() async {
    final userId = sharedPreferences.getString('user_id');
    return userId != null;
  }
}
