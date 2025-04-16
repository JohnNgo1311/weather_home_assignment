import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/entities/feels_like_entity.dart';
part 'feels_like_model.g.dart';

@JsonSerializable()
class FeelsLikeModel {
  @JsonKey(name: "day")
  double? day;
  @JsonKey(name: "night")
  double? night;
  @JsonKey(name: "eve")
  double? eve;
  @JsonKey(name: "morn")
  double? morn;

  FeelsLikeModel({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  factory FeelsLikeModel.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeelsLikeModelToJson(this);

  FeelsLikeEntity getFeelsLikeEntity() {
    return FeelsLikeEntity(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}
