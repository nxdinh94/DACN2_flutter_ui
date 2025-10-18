part of 'contacts_bloc.dart';

@freezed
sealed class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = ContactsInitial;
  
  const factory ContactsState.loading() = ContactsLoading;
  
  const factory ContactsState.loaded(List<Contact> contacts) = ContactsLoaded;
  
  const factory ContactsState.error(String message) = ContactsError;
}
