import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateHelper {
  bool isBeforeToday(String date) {
    DateTime? dateTime = DateTime.tryParse(date);
    if (dateTime == null) {
      return false;
    }
    return dateTime.isBefore(DateTime.now());
  }

  String splitDate(String date) {
    List<String> splitDate = date.split(' ');
    if (splitDate.length > 1) {
      splitDate.insert(1, '\n');
    }
    return splitDate.join(' ');
  }

  String formatDate(DateTime? date) =>
      date == null ? '' : DateFormat('yyyy-MM-dd hh:mm','en').format(date);

  String? formatDateJustDate(DateTime? date) =>
      date == null ? null : DateFormat('yyyy-MM-dd','en').format(date);


  String? formatDateJustTime(DateTime? date) =>
      date == null ? null : DateFormat('hh:mm','en').format(date);

  TimeOfDay? timeFromString(String? timeString) {
    try {
      if (timeString != null) {
        final parts = timeString.split(':');
        if (parts.length == 2) {
          final hour = int.parse(parts[0] ?? '');
          final minute = int.parse(parts[1] ?? '');
          if (hour >= 0 && hour < 24 && minute >= 0 && minute < 60) {
            return TimeOfDay(hour: hour, minute: minute);
          }
        }
      }
    } catch (e) {
      // Handle parsing errors if necessary.
    }
    return null; // Return null if parsing fails.
  }

  DateTime? dateFromString(String? date) {
    try {
      if (date != null) {
        return DateTime.tryParse(date);
      }
    } catch (e) {
      // Handle parsing errors if necessary.
    }
    return null; // Return null if parsing fails.
  }

  String formatTime24(TimeOfDay? timeOfDay) => timeOfDay == null
      ? ''
      : DateFormat.Hm().format(DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          timeOfDay.hour,
          timeOfDay.minute));

  String formatDate24(DateTime? date) =>
      date == null ? '' : DateFormat('yyyy-MM-dd hh:mm:ss','en').format(date);

  int calculateDaysDifference(DateTime date1, DateTime date2) {
    // Calculate the difference in milliseconds.
    final differenceInMilliseconds =
        date2.millisecondsSinceEpoch - date1.millisecondsSinceEpoch;

    // Convert milliseconds to days and round up.
    final daysDifference =
        (differenceInMilliseconds / (1000 * 60 * 60 * 24)).ceil();

    return daysDifference;
  }

  int countFridaysBetween(DateTime start, DateTime end) {
    if (start.isAfter(end)) {
      return 0; // No Fridays between the dates.
    }

    int fridayCount = 0;
    DateTime currentDate = start;

    while (currentDate.isBefore(end)) {
      if (currentDate.weekday == DateTime.friday) {
        fridayCount++;
      }
      currentDate = currentDate.add(const Duration(days: 1));
    }
    return fridayCount;
  }

  String convertToDaysAndHours(int hours) {
    if (hours < 0) {
      throw ArgumentError('Hours must be a non-negative integer.');
    }

    final days = hours ~/ 24;
    final remainingHours = hours % 24;

    final daysPart = days > 0 ? '($days days) ' : '';
    final hoursPart = remainingHours > 0 ? '$remainingHours hours' : '';

    return '$daysPart$hoursPart';
  }
}
