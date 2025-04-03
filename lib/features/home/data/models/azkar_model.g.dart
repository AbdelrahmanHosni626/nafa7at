// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azkar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AzkarModel _$AzkarModelFromJson(Map<String, dynamic> json) => AzkarModel(
  azkar:
      (json['azkar'] as List<dynamic>?)
          ?.map((e) => AzkarListModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$AzkarModelToJson(AzkarModel instance) =>
    <String, dynamic>{'azkar': instance.azkar};

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
