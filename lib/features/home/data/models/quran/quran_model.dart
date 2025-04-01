import 'package:json_annotation/json_annotation.dart';

part 'quran_model.g.dart';

@JsonSerializable()
class QuranModel {
  @JsonKey(defaultValue: "")
  final String id;
  @JsonKey(defaultValue: "")
  final String number;
  @JsonKey(defaultValue: "", name: "name_ar")
  final String nameAr;
  @JsonKey(defaultValue: "", name: "name_en")
  final String nameEn;
  @JsonKey(defaultValue: "", name: "name_en_translation")
  final String nameEnTranslation;
  @JsonKey(defaultValue: "")
  final String type;

  QuranModel({
    required this.id,
    required this.number,
    required this.nameAr,
    required this.nameEn,
    required this.nameEnTranslation,
    required this.type,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      _$QuranModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuranModelToJson(this);
}
