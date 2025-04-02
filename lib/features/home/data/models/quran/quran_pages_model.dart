import 'package:json_annotation/json_annotation.dart';

part 'quran_pages_model.g.dart';

@JsonSerializable()
class QuranPagesModel {
  @JsonKey(defaultValue: "")
  final String status;
  @JsonKey(defaultValue: 0, name: "total_pages")
  final int totalPages;
  @JsonKey(defaultValue: [])
  final List<Pages> pages;

  const QuranPagesModel({
    required this.status,
    required this.totalPages,
    required this.pages,
  });

  factory QuranPagesModel.fromJson(Map<String, dynamic> json) =>
      _$QuranPagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuranPagesModelToJson(this);
}

@JsonSerializable()
class Pages {
  @JsonKey(defaultValue: 0, name: "page_number")
  final int pageNumber;
  @JsonKey(defaultValue: "", name: "page_url")
  final String pageUrl;

  const Pages({required this.pageNumber, required this.pageUrl});

  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);

  Map<String, dynamic> toJson() => _$PagesToJson(this);
}
