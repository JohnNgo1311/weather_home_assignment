import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "main")
  String? main;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "icon")
  String? icon;

  WeatherModel({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  WeatherEntity getWeatherEntity() {
    return WeatherEntity(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}
