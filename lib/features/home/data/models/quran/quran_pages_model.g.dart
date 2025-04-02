// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_pages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranPagesModel _$QuranPagesModelFromJson(Map<String, dynamic> json) =>
    QuranPagesModel(
      status: json['status'] as String? ?? '',
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      pages:
          (json['pages'] as List<dynamic>?)
              ?.map((e) => Pages.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$QuranPagesModelToJson(QuranPagesModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_pages': instance.totalPages,
      'pages': instance.pages,
    };

Pages _$PagesFromJson(Map<String, dynamic> json) => Pages(
  pageNumber: (json['page_number'] as num?)?.toInt() ?? 0,
  pageUrl: json['page_url'] as String? ?? '',
);

Map<String, dynamic> _$PagesToJson(Pages instance) => <String, dynamic>{
  'page_number': instance.pageNumber,
  'page_url': instance.pageUrl,
};
