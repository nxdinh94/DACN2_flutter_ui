part of 'locale_bloc.dart';

/// Events for locale management
@freezed
sealed class LocaleEvent with _$LocaleEvent {
  /// Change to a specific locale
  const factory LocaleEvent.changeLocale(Locale locale) = ChangeLocale;
  
  /// Toggle between English and Vietnamese
  const factory LocaleEvent.toggleLocale() = ToggleLocale;
}
