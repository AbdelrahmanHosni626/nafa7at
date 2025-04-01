// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranModel _$QuranModelFromJson(Map<String, dynamic> json) => QuranModel(
  id: json['id'] as String? ?? '',
  number: json['number'] as String? ?? '',
  nameAr: json['name_ar'] as String? ?? '',
  nameEn: json['name_en'] as String? ?? '',
  nameEnTranslation: json['name_en_translation'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$QuranModelToJson(QuranModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'name_en_translation': instance.nameEnTranslation,
      'type': instance.type,
    };
