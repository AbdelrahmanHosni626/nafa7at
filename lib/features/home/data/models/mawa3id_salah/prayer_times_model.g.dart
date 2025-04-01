// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_times_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrayerTimes _$PrayerTimesFromJson(Map<String, dynamic> json) => PrayerTimes(
  fajr: json['fajr'] as String? ?? '',
  sunrise: json['sunrise'] as String? ?? '',
  dhuhr: json['Dhuhr'] as String? ?? '',
  asr: json['Asr'] as String? ?? '',
  maghrib: json['Maghrib'] as String? ?? '',
  isha: json['Isha'] as String? ?? '',
);

Map<String, dynamic> _$PrayerTimesToJson(PrayerTimes instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'Dhuhr': instance.dhuhr,
      'Asr': instance.asr,
      'Maghrib': instance.maghrib,
      'Isha': instance.isha,
    };
