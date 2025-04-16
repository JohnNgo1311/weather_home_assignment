import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/entities/daily_forecast_entity.dart';

import '../feels_like_model/feels_like_model.dart';
import '../temp_model/temp_model.dart';
import '../weather_model/weather_model.dart';
part 'daily_forecast_model.g.dart';

@JsonSerializable()
class DailyForecastModel {
  @JsonKey(name: "dt")
  int? dt;
  @JsonKey(name: "sunrise")
  int? sunrise;
  @JsonKey(name: "sunset")
  int? sunset;
  @JsonKey(name: "temp")
  TempModel? temp;
  @JsonKey(name: "feels_like")
  FeelsLikeModel? feelsLike;
  @JsonKey(name: "pressure")
  int? pressure;
  @JsonKey(name: "humidity")
  int? humidity;
  @JsonKey(name: "weather")
  List<WeatherModel>? weather;
  @JsonKey(name: "speed")
  double? speed;
  @JsonKey(name: "deg")
  int? deg;
  @JsonKey(name: "gust")
  double? gust;
  @JsonKey(name: "clouds")
  int? clouds;
  @JsonKey(name: "pop")
  int? pop;
  @JsonKey(name: "rain")
  double? rain;

  DailyForecastModel({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.weather,
    this.speed,
    this.deg,
    this.gust,
    this.clouds,
    this.pop,
    this.rain,
  });

  factory DailyForecastModel.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastModelFromJson(json);

  Map<String, dynamic> toJson() => _$DailyForecastModelToJson(this);

  DailyForecastEntity getDailyForecastEntity() {
    return DailyForecastEntity(
      dt: dt,
      sunrise: sunrise,
      sunset: sunset,
      temp: temp?.getTempEntity(),
      feelsLike: feelsLike?.getFeelsLikeEntity(),
      pressure: pressure,
      humidity: humidity,
      weather: weather?.map((e) => e.getWeatherEntity()).toList(),
      speed: speed,
      deg: deg,
      gust: gust,
      clouds: clouds,
      pop: pop,
      rain: rain,
    );
  }
}
