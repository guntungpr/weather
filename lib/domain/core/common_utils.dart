import 'package:intl/intl.dart';

// ignore: avoid_classes_with_only_static_members
class CommonUtils {
  static String getTime(String pattern, DateTime date) {
    final DateFormat format = DateFormat(pattern);
    final String sDate = format.format(date);
    return sDate;
  }
}
