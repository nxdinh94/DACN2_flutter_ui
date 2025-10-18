import '../entities/contact.dart';

abstract class ContactRepository {
  Future<List<Contact>> getContacts();
  Future<Contact> getContactById(String id);
  Future<void> addContact(Contact contact);
  Future<void> updateContact(Contact contact);
  Future<void> deleteContact(String id);
}
