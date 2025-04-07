import 'package:json_annotation/json_annotation.dart';

part 'azkar_model.g.dart';

@JsonSerializable()
class AzkarModel {
  @JsonKey(defaultValue: [], name: "prayer_azkar")
  final List<AzkarListModel> azkarSalah;
  @JsonKey(defaultValue: [], name: "morning_azkar")
  final List<AzkarListModel> azkarSabah;
  @JsonKey(defaultValue: [], name: "evening_azkar")
  final List<AzkarListModel> azkarMasaa;
  @JsonKey(defaultValue: [], name: "prayer_later_azkar")
  final List<AzkarListModel> prayerLaterAzkar;
  @JsonKey(defaultValue: [], name: "sleep_azkar")
  final List<AzkarListModel> sleepAzkar;
  @JsonKey(defaultValue: [], name: "wake_up_azkar")
  final List<AzkarListModel> wakeUpAzkar;
  @JsonKey(defaultValue: [], name: "mosque_azkar")
  final List<AzkarListModel> mosqueAzkar;
  @JsonKey(defaultValue: [], name: "miscellaneous_azkar")
  final List<AzkarListModel> azkarMotanwi3a;
  @JsonKey(defaultValue: [], name: "adhan_azkar")
  final List<AzkarListModel> adhanAzkar;
  @JsonKey(defaultValue: [], name: "wudu_azkar")
  final List<AzkarListModel> wuduAzkar;
  @JsonKey(defaultValue: [], name: "home_azkar")
  final List<AzkarListModel> homeAzkar;
  @JsonKey(defaultValue: [], name: "khala_azkar")
  final List<AzkarListModel> khalaAzkar;
  @JsonKey(defaultValue: [], name: "food_azkar")
  final List<AzkarListModel> foodAzkar;
  @JsonKey(defaultValue: [], name: "hajj_and_umrah_azkar")
  final List<AzkarListModel> hajjAndUmrahAzkar;

  factory AzkarModel.fromJson(Map<String, dynamic> json) =>
      _$AzkarModelFromJson(json);

  const AzkarModel({
    required this.azkarSalah,
    required this.azkarSabah,
    required this.azkarMasaa,
    required this.prayerLaterAzkar,
    required this.sleepAzkar,
    required this.wakeUpAzkar,
    required this.mosqueAzkar,
    required this.azkarMotanwi3a,
    required this.adhanAzkar,
    required this.wuduAzkar,
    required this.homeAzkar,
    required this.khalaAzkar,
    required this.foodAzkar,
    required this.hajjAndUmrahAzkar,
  });

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
