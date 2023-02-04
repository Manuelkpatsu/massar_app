import 'package:intl/intl.dart';

class DateFormatter {
  DateFormatter();

  static String getDateTime(DateTime dateTime) {
    DateTime now = DateTime.now();
    DateTime justNow = now.subtract(const Duration(minutes: 1));
    DateTime yesterday = now.subtract(const Duration(days: 1));

    if (dateTime.day == now.day &&
        dateTime.month == now.month &&
        dateTime.year == now.year &&
        justNow.difference(dateTime).isNegative) {
      return 'Just Now';
    }

    if (dateTime.day == now.day &&
        dateTime.month == now.month &&
        dateTime.year == now.year) {
      return 'Today';
    }

    if (dateTime.day == yesterday.day &&
        dateTime.month == now.month &&
        dateTime.year == now.year) {
      return 'Yesterday';
    }

    return DateFormat('dd-MM-yyyy').format(dateTime);
  }
}

extension DateTimeExtension on DateTime {
  bool isAfterOrEqualTo(DateTime dateTime) {
    final date = this;
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
    return isAtSameMomentAs | date.isAfter(dateTime);
  }

  bool isBeforeOrEqualTo(DateTime dateTime) {
    final date = this;
    final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
    return isAtSameMomentAs | date.isBefore(dateTime);
  }

  bool isBetween({
    required DateTime startDateTime,
    required DateTime endDateTime,
  }) {
    final date = this;
    final isAfter = date.isAfterOrEqualTo(startDateTime);
    final isBefore = date.isBeforeOrEqualTo(endDateTime);
    return isAfter && isBefore;
  }
}
