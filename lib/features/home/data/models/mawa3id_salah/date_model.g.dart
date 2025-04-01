// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Date _$DateFromJson(Map<String, dynamic> json) => Date(
  dateEn: json['date_en'] as String? ?? '',
  dateHijri:
      json['date_hijri'] == null
          ? null
          : DateHijri.fromJson(json['date_hijri'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
  'date_en': instance.dateEn,
  'date_hijri': instance.dateHijri,
};

DateHijri _$DateHijriFromJson(Map<String, dynamic> json) => DateHijri(
  date: json['date'] as String? ?? '',
  format: json['format'] as String? ?? '',
  day: json['day'] as String? ?? '',
  weekday: Weekday.fromJson(json['weekday'] as Map<String, dynamic>),
  month: Month.fromJson(json['month'] as Map<String, dynamic>),
  year: json['year'] as String? ?? '',
  designation: Designation.fromJson(
    json['designation'] as Map<String, dynamic>,
  ),
  holidays: json['holidays'] as List<dynamic>? ?? [],
  adjustedHolidays: json['adjustedHolidays'] as List<dynamic>? ?? [],
  method: json['method'] as String? ?? '',
);

Map<String, dynamic> _$DateHijriToJson(DateHijri instance) => <String, dynamic>{
  'date': instance.date,
  'format': instance.format,
  'day': instance.day,
  'weekday': instance.weekday,
  'month': instance.month,
  'year': instance.year,
  'designation': instance.designation,
  'holidays': instance.holidays,
  'adjustedHolidays': instance.adjustedHolidays,
  'method': instance.method,
};

Weekday _$WeekdayFromJson(Map<String, dynamic> json) =>
    Weekday(en: json['en'] as String? ?? '', ar: json['ar'] as String? ?? '');

Map<String, dynamic> _$WeekdayToJson(Weekday instance) => <String, dynamic>{
  'en': instance.en,
  'ar': instance.ar,
};

Month _$MonthFromJson(Map<String, dynamic> json) => Month(
  number: (json['number'] as num?)?.toInt() ?? 0,
  en: json['en'] as String? ?? '',
  ar: json['ar'] as String? ?? '',
  days: (json['days'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$MonthToJson(Month instance) => <String, dynamic>{
  'number': instance.number,
  'en': instance.en,
  'ar': instance.ar,
  'days': instance.days,
};

Designation _$DesignationFromJson(Map<String, dynamic> json) => Designation(
  abbreviated: json['abbreviated'] as String? ?? '',
  expanded: json['expanded'] as String? ?? '',
);

Map<String, dynamic> _$DesignationToJson(Designation instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };
