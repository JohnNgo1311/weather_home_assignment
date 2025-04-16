import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/models/daily_forecast_model/daily_forecast_model.dart';
import 'package:weather_app/domain/entities/weather_forecast_entity.dart';

import '../city_model/city_model.dart';

part 'weather_forecast_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherForecastModel {
  @JsonKey(name: "city")
  CityModel? city;
  @JsonKey(name: "cod")
  String? cod;
  @JsonKey(name: "message")
  double? message;
  @JsonKey(name: "cnt")
  int? cnt;
  @JsonKey(name: "list")
  List<DailyForecastModel>? list;

  WeatherForecastModel({
    this.city,
    this.cod,
    this.message,
    this.cnt,
    this.list,
  });
  WeatherForecastEntity getWeatherEntity() {
    return WeatherForecastEntity(
      cityEntity: city?.getCityEntity(),
      cod: cod,
      message: message,
      cnt: cnt,
      dailyForecastEntities: list
          ?.map((dailyForecastModel) =>
              dailyForecastModel.getDailyForecastEntity())
          .toList(),
    );
  }

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherForecastModelToJson(this);

  WeatherForecastEntity getWeatherForecastEntity() {
    return WeatherForecastEntity(
      cityEntity: city?.getCityEntity(),
      cod: cod,
      message: message,
      cnt: cnt,
      dailyForecastEntities: list
          ?.map((dailyForecastModel) =>
              dailyForecastModel.getDailyForecastEntity())
          .toList(),
    );
  }
}
