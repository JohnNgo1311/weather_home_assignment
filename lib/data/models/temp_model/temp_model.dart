import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/entities/temp_entity.dart';
part 'temp_model.g.dart';

@JsonSerializable()
class TempModel {
  @JsonKey(name: "day")
  double? day;
  @JsonKey(name: "min")
  double? min;
  @JsonKey(name: "max")
  double? max;
  @JsonKey(name: "night")
  double? night;
  @JsonKey(name: "eve")
  double? eve;
  @JsonKey(name: "morn")
  double? morn;

  TempModel({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  factory TempModel.fromJson(Map<String, dynamic> json) =>
      _$TempModelFromJson(json);

  Map<String, dynamic> toJson() => _$TempModelToJson(this);

  TempEntity getTempEntity() {
    return TempEntity(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}
