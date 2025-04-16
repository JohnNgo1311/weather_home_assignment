import 'package:intl/intl.dart';
import 'package:weather_app/data/models/daily_forecast_model/daily_forecast_model.dart';
import 'package:weather_app/domain/entities/feels_like_entity.dart';
import 'package:weather_app/domain/entities/temp_entity.dart';
import 'package:weather_app/domain/entities/weather_entity.dart';

class DailyForecastEntity {
  int? dt;
  int? sunrise;
  int? sunset;
  TempEntity? temp;
  FeelsLikeEntity? feelsLike;
  int? pressure;
  int? humidity;
  List<WeatherEntity>? weather;
  double? speed;
  int? deg;
  double? gust;
  int? clouds;
  int? pop;
  double? rain;

  DailyForecastEntity({
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

  DailyForecastEntity copyWith({
    int? dt,
    int? sunrise,
    int? sunset,
    TempEntity? temp,
    FeelsLikeEntity? feelsLike,
    int? pressure,
    int? humidity,
    List<WeatherEntity>? weather,
    double? speed,
    int? deg,
    double? gust,
    int? clouds,
    int? pop,
    double? rain,
  }) {
    return DailyForecastEntity(
      dt: dt ?? this.dt,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
      temp: temp ?? this.temp,
      feelsLike: feelsLike ?? this.feelsLike,
      pressure: pressure ?? this.pressure,
      humidity: humidity ?? this.humidity,
      weather: weather ?? this.weather,
      speed: speed ?? this.speed,
      deg: deg ?? this.deg,
      gust: gust ?? this.gust,
      clouds: clouds ?? this.clouds,
      pop: pop ?? this.pop,
      rain: rain ?? this.rain,
    );
  }

  DailyForecastModel get convertToDailyForecastModel {
    return DailyForecastModel(
      dt: dt,
      sunrise: sunrise,
      sunset: sunset,
      temp: temp?.convertToTempModel,
      feelsLike: feelsLike?.convertToFeelsLikeModel,
      pressure: pressure,
      humidity: humidity,
      weather: weather
          ?.map((weatherEntity) => weatherEntity.convertToWeatherModel)
          .toList(),
      speed: speed,
      deg: deg,
      gust: gust,
      clouds: clouds,
      pop: pop,
      rain: rain,
    );
  }

  String getWeekdayFromTimestamp() {
    final date = DateTime.fromMillisecondsSinceEpoch(dt! * 1000);
    return DateFormat.EEEE('en_US').format(date); // Ví dụ: "Wednesday"
  }
}
