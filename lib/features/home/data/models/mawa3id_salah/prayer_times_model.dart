import 'package:json_annotation/json_annotation.dart';

part 'prayer_times_model.g.dart';

@JsonSerializable()
class PrayerTimes {
  @JsonKey(name: "Fajr", defaultValue: "")
  final String fajr;

  @JsonKey(name: "Sunrise", defaultValue: "")
  final String sunrise;

  @JsonKey(name: "Dhuhr", defaultValue: "")
  final String dhuhr;

  @JsonKey(name: "Asr", defaultValue: "")
  final String asr;

  @JsonKey(name: "Maghrib", defaultValue: "")
  final String maghrib;

  @JsonKey(name: "Isha", defaultValue: "")
  final String isha;

  const PrayerTimes({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
  });

  factory PrayerTimes.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimesFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerTimesToJson(this);
}
