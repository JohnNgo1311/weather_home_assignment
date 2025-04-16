// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecastModel _$WeatherForecastModelFromJson(
        Map<String, dynamic> json) =>
    WeatherForecastModel(
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      cod: json['cod'] as String?,
      message: (json['message'] as num?)?.toDouble(),
      cnt: (json['cnt'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => DailyForecastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeatherForecastModelToJson(
        WeatherForecastModel instance) =>
    <String, dynamic>{
      'city': instance.city?.toJson(),
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list?.map((e) => e.toJson()).toList(),
    };
