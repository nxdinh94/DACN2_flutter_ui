// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get helloWorld => 'Xin chào thế giới';

  @override
  String hello(Object name) {
    return 'Xin chào $name';
  }

  @override
  String get welcomeTitle => 'Chào mừng đến với Keep In Touch';

  @override
  String get welcomeSubtitle => 'Giữ liên lạc với danh bạ của bạn';

  @override
  String get analytics => 'Phân tích';

  @override
  String get viewAnalytics => 'Xem phân tích';

  @override
  String get addNew => 'Thêm mới';

  @override
  String get addNewHint => 'Thêm danh bạ hoặc lịch trình mới';

  @override
  String get welcomeSection => 'Phần chào mừng';
}
