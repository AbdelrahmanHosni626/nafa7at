import 'package:json_annotation/json_annotation.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/date_model.dart';
import 'package:nafa7at/features/home/data/models/mawa3id_salah/prayer_times_model.dart';

part 'mawa3id_salah_model.g.dart';

@JsonSerializable()
class Mawa3idSalahModel {
  @JsonKey(defaultValue: "")
  final String region;

  @JsonKey(defaultValue: "")
  final String country;

  final PrayerTimes? prayerTimes;
  final Date date;
  final Meta meta;

  factory Mawa3idSalahModel.fromJson(Map<String, dynamic> json) =>
      _$Mawa3idSalahModelFromJson(json);

  const Mawa3idSalahModel({
    required this.region,
    required this.country,
    this.prayerTimes,
    required this.date,
    required this.meta,
  });

  Map<String, dynamic> toJson() => _$Mawa3idSalahModelToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(defaultValue: "")
  final String timezone;

  const Meta({required this.timezone});

  factory Meta.fallback() => const Meta(timezone: 'UTC');

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
