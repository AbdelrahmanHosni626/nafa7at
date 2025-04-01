import 'package:json_annotation/json_annotation.dart';

part 'date_model.g.dart';

@JsonSerializable()
class Date {
  @JsonKey(name: "date_en", defaultValue: "")
  final String dateEn;

  @JsonKey(name: "date_hijri", required: false)
  final DateHijri? dateHijri;

  const Date({required this.dateEn, required this.dateHijri});
  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);
}

@JsonSerializable()
class DateHijri {
  @JsonKey(defaultValue: "")
  final String date;

  @JsonKey(defaultValue: "")
  final String format;

  @JsonKey(defaultValue: "")
  final String day;

  final Weekday weekday;
  final Month month;

  @JsonKey(defaultValue: "")
  final String year;

  final Designation designation;

  @JsonKey(defaultValue: [])
  final List holidays;

  @JsonKey(defaultValue: [])
  final List adjustedHolidays;

  @JsonKey(defaultValue: "")
  final String method;

  const DateHijri({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
    required this.holidays,
    required this.adjustedHolidays,
    required this.method,
  });

  factory DateHijri.fromJson(Map<String, dynamic> json) =>
      _$DateHijriFromJson(json);

  Map<String, dynamic> toJson() => _$DateHijriToJson(this);
}

@JsonSerializable()
class Weekday {
  @JsonKey(defaultValue: "")
  final String en;

  @JsonKey(defaultValue: "")
  final String ar;

  const Weekday({required this.en, required this.ar});

  factory Weekday.fromJson(Map<String, dynamic> json) =>
      _$WeekdayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekdayToJson(this);
}

@JsonSerializable()
class Month {
  @JsonKey(defaultValue: 0)
  final int number;
  @JsonKey(defaultValue: "")
  final String en;
  @JsonKey(defaultValue: "")
  final String ar;
  @JsonKey(defaultValue: 0)
  final int days;

  const Month({
    required this.number,
    required this.en,
    required this.ar,
    required this.days,
  });

  factory Month.fromJson(Map<String, dynamic> json) => _$MonthFromJson(json);

  Map<String, dynamic> toJson() => _$MonthToJson(this);
}

@JsonSerializable()
class Designation {
  @JsonKey(defaultValue: "")
  final String abbreviated;
  @JsonKey(defaultValue: "")
  final String expanded;

  const Designation({required this.abbreviated, required this.expanded});

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);

  Map<String, dynamic> toJson() => _$DesignationToJson(this);
}
