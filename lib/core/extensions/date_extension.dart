import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  /// Formats date to "11 October 1999" format
  String toDDMMYY() {
    return DateFormat('dd MMMM yyyy').format(this);
  }
}