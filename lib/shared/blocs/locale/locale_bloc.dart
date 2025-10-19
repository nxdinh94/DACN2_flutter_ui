import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_event.dart';
part 'locale_state.dart';
part 'locale_bloc.freezed.dart';

@injectable
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(const LocaleState(locale: Locale('en'))) {
    on<LocaleEvent>((event, emit) {
      switch (event) {
        case ChangeLocale(:final locale):
          emit(LocaleState(locale: locale));
        case ToggleLocale():
          final newLocale = state.locale.languageCode == 'en'
              ? const Locale('vi')
              : const Locale('en');
          emit(LocaleState(locale: newLocale));
      }
    });
  }
}
