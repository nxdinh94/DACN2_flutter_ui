// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String hello(Object name) {
    return 'Hello $name';
  }

  @override
  String get welcomeTitle => 'Welcome to Keep In Touch';

  @override
  String get welcomeSubtitle => 'Stay connected with your contacts';

  @override
  String get analytics => 'Analytics';

  @override
  String get viewAnalytics => 'View analytics';

  @override
  String get addNew => 'Add new item';

  @override
  String get addNewHint => 'Add a new contact or schedule';

  @override
  String get welcomeSection => 'Welcome section';
}
