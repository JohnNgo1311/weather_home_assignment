// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyForecastModel _$DailyForecastModelFromJson(Map<String, dynamic> json) =>
    DailyForecastModel(
      dt: (json['dt'] as num?)?.toInt(),
      sunrise: (json['sunrise'] as num?)?.toInt(),
      sunset: (json['sunset'] as num?)?.toInt(),
      temp: json['temp'] == null
          ? null
          : TempModel.fromJson(json['temp'] as Map<String, dynamic>),
      feelsLike: json['feels_like'] == null
          ? null
          : FeelsLikeModel.fromJson(json['feels_like'] as Map<String, dynamic>),
      pressure: (json['pressure'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toInt(),
      gust: (json['gust'] as num?)?.toDouble(),
      clouds: (json['clouds'] as num?)?.toInt(),
      pop: (json['pop'] as num?)?.toInt(),
      rain: (json['rain'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DailyForecastModelToJson(DailyForecastModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'weather': instance.weather,
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
    };
