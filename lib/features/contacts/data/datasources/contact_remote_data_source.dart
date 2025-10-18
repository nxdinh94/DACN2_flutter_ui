// Mock data source - will be replaced with actual API implementation
import '../../domain/entities/contact.dart';

abstract class ContactRemoteDataSource {
  Future<List<Contact>> getContacts();
  Future<Contact> getContactById(String id);
  Future<void> addContact(Contact contact);
  Future<void> updateContact(Contact contact);
  Future<void> deleteContact(String id);
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final dynamic dioClient;

  ContactRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<Contact>> getContacts() async {
    // Mock implementation - replace with actual API call
    await Future.delayed(const Duration(seconds: 1));
    return [
      Contact(
        id: '1',
        name: 'Alice Johnson',
        email: 'alice@example.com',
        phone: '+1234567890',
        isOnline: true,
        lastSeen: DateTime.now().subtract(const Duration(minutes: 5)),
        status: 'Available',
      ),
      Contact(
        id: '2',
        name: 'Bob Smith',
        email: 'bob@example.com',
        phone: '+1987654321',
        isOnline: false,
        lastSeen: DateTime.now().subtract(const Duration(hours: 2)),
        status: 'Busy',
      ),
      Contact(
        id: '3',
        name: 'Carol Wilson',
        email: 'carol@example.com',
        isOnline: true,
        lastSeen: DateTime.now().subtract(const Duration(minutes: 1)),
        status: 'Available',
      ),
    ];
  }

  @override
  Future<Contact> getContactById(String id) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
    return Contact(
      id: id,
      name: 'Contact $id',
      email: 'contact$id@example.com',
      lastSeen: DateTime.now(),
    );
  }

  @override
  Future<void> addContact(Contact contact) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> updateContact(Contact contact) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> deleteContact(String id) async {
    // Mock implementation
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
