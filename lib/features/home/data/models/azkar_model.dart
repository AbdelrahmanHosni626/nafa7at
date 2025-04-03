import 'package:json_annotation/json_annotation.dart';

part 'azkar_model.g.dart';

@JsonSerializable()
class AzkarModel {
  @JsonKey(defaultValue: [])
  final List<AzkarListModel> azkar;

  const AzkarModel({required this.azkar});

  factory AzkarModel.fromJson(Map<String, dynamic> json) =>
      _$AzkarModelFromJson(json);

  Map<String, dynamic> toJson() => _$AzkarModelToJson(this);
}

@JsonSerializable()
class AzkarListModel {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: 0)
  final int count;
  @JsonKey(defaultValue: "")
  final String text;

  const AzkarListModel({
    required this.id,
    required this.count,
    required this.text,
  });

  factory AzkarListModel.fromJson(Map<String, dynamic> json) =>
      _$AzkarListModelFromJson(json);

  Map<String, dynamic> toJson() => _$AzkarListModelToJson(this);
}
