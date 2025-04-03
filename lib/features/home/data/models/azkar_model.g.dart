// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azkar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AzkarModel _$AzkarModelFromJson(Map<String, dynamic> json) => AzkarModel(
  azkarSalah:
      (json['prayer_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  azkarSabah:
      (json['morning_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  azkarMasaa:
      (json['evening_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  prayerLaterAzkar:
      (json['prayer_later_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  sleepAzkar:
      (json['sleep_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  wakeUpAzkar:
      (json['wake_up_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  mosqueAzkar:
      (json['mosque_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  azkarMotanwi3a:
      (json['miscellaneous_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  adhanAzkar:
      (json['adhan_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  wuduAzkar:
      (json['wudu_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  homeAzkar:
      (json['home_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  khalaAzkar:
      (json['khala_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  foodAzkar:
      (json['food_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  hajjAndUmrahAzkar:
      (json['hajj_and_umrah_azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AzkarModelToJson(AzkarModel instance) =>
    <String, dynamic>{
      'prayer_azkar': instance.azkarSalah,
      'morning_azkar': instance.azkarSabah,
      'evening_azkar': instance.azkarMasaa,
      'prayer_later_azkar': instance.prayerLaterAzkar,
      'sleep_azkar': instance.sleepAzkar,
      'wake_up_azkar': instance.wakeUpAzkar,
      'mosque_azkar': instance.mosqueAzkar,
      'miscellaneous_azkar': instance.azkarMotanwi3a,
      'adhan_azkar': instance.adhanAzkar,
      'wudu_azkar': instance.wuduAzkar,
      'home_azkar': instance.homeAzkar,
      'khala_azkar': instance.khalaAzkar,
      'food_azkar': instance.foodAzkar,
      'hajj_and_umrah_azkar': instance.hajjAndUmrahAzkar,
    };

AzkarListModel _$AzkarListModelFromJson(Map<String, dynamic> json) =>
    AzkarListModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$AzkarListModelToJson(AzkarListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'text': instance.text,
    };
