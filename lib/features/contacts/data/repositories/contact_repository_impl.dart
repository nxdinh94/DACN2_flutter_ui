import 'package:injectable/injectable.dart';

import '../../domain/entities/contact.dart';
import '../../domain/repositories/contact_repository.dart';
import '../datasources/contact_remote_data_source.dart';

@injectable
class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource remoteDataSource;

  ContactRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<List<Contact>> getContacts() async {
    return await remoteDataSource.getContacts();
  }

  @override
  Future<Contact> getContactById(String id) async {
    return await remoteDataSource.getContactById(id);
  }

  @override
  Future<void> addContact(Contact contact) async {
    await remoteDataSource.addContact(contact);
  }

  @override
  Future<void> updateContact(Contact contact) async {
    await remoteDataSource.updateContact(contact);
  }

  @override
  Future<void> deleteContact(String id) async {
    await remoteDataSource.deleteContact(id);
  }
}
