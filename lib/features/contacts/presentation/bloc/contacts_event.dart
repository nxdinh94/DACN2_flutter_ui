part of 'contacts_bloc.dart';

@freezed
sealed class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.loadContacts() = LoadContacts;
  
  const factory ContactsEvent.refreshContacts() = RefreshContacts;
}
