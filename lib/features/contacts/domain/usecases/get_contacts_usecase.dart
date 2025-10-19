import 'package:injectable/injectable.dart';

import '../entities/contact.dart';
import '../repositories/contact_repository.dart';

@injectable
class GetContactsUseCase {
  final ContactRepository repository;

  GetContactsUseCase(this.repository);

  Future<List<Contact>> call() async {
    return await repository.getContacts();
  }
}
