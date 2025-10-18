import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/contact.dart';
import '../../domain/usecases/get_contacts_usecase.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';
part 'contacts_bloc.freezed.dart';

// BLoC
@injectable
class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  final GetContactsUseCase getContactsUseCase;

  ContactsBloc({
    required this.getContactsUseCase,
  }) : super(const ContactsState.initial()) {
    on<ContactsEvent>((event, emit) async {
      switch (event) {
        case LoadContacts():
          await _onLoadContacts(emit);
        case RefreshContacts():
          await _onRefreshContacts(emit);
      }
    });
  }

  Future<void> _onLoadContacts(
    Emitter<ContactsState> emit,
  ) async {
    emit(const ContactsState.loading());
    try {
      final contacts = await getContactsUseCase();
      emit(ContactsState.loaded(contacts));
    } catch (e) {
      emit(ContactsState.error(e.toString()));
    }
  }

  Future<void> _onRefreshContacts(
    Emitter<ContactsState> emit,
  ) async {
    try {
      final contacts = await getContactsUseCase();
      emit(ContactsState.loaded(contacts));
    } catch (e) {
      emit(ContactsState.error(e.toString()));
    }
  }
}
