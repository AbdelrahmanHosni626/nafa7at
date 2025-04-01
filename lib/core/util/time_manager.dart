import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

class TimeManager {
  static DateTime now = DateTime.now();

  static String miladDate() {
    String gregorianDate = DateFormat('EEEE, d MMMM yyyy', 'ar').format(now);
    return gregorianDate;
  }

  static String hijriDate() {
    HijriCalendar.setLocal('ar');
    HijriCalendar hijriDate = HijriCalendar.fromDate(now);
    String hijriFormatted =
        '${hijriDate.getDayName()}, ${hijriDate.hDay} ${hijriDate.getLongMonthName()} ${hijriDate.hYear}';
    return hijriFormatted.toString();
  }
}
