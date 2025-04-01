// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mawa3id_salah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mawa3idSalahModel _$Mawa3idSalahModelFromJson(Map<String, dynamic> json) =>
    Mawa3idSalahModel(
      region: json['region'] as String? ?? '',
      country: json['country'] as String? ?? '',
      prayerTimes:
          json['prayerTimes'] == null
              ? null
              : PrayerTimes.fromJson(
                json['prayerTimes'] as Map<String, dynamic>,
              ),
      date: Date.fromJson(json['date'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Mawa3idSalahModelToJson(Mawa3idSalahModel instance) =>
    <String, dynamic>{
      'region': instance.region,
      'country': instance.country,
      'prayerTimes': instance.prayerTimes,
      'date': instance.date,
      'meta': instance.meta,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) =>
    Meta(timezone: json['timezone'] as String? ?? '');

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'timezone': instance.timezone,
};
