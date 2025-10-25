import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/features/auth/domain/entities/auth_token_entity.dart';
import 'package:kit/features/auth/domain/entities/login.dart';
import '../repositories/auth_repository.dart';

@injectable
class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<String, bool>> call(Login model) async {
    return await repository.login(model);
  }
}
