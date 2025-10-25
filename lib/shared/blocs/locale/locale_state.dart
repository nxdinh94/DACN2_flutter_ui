part of 'locale_bloc.dart';

/// State for locale management
@freezed
abstract class LocaleState with _$LocaleState {
  const factory LocaleState({
    required Locale locale,
  }) = _LocaleState;
}
  