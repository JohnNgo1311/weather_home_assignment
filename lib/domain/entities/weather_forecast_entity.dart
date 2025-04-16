import 'package:weather_app/domain/entities/city_entity.dart';
import 'package:weather_app/domain/entities/daily_forecast_entity.dart';

import '../../data/models/model.dart';

class WeatherForecastEntity {
  CityEntity? cityEntity;
  String? cod;
  double? message;
  int? cnt;
  List<DailyForecastEntity>? dailyForecastEntities;
  WeatherForecastEntity(
      {this.cityEntity,
      this.cod,
      this.message,
      this.cnt,
      this.dailyForecastEntities});
  WeatherForecastEntity copyWith({
    CityEntity? cityEntity,
    String? cod,
    double? message,
    int? cnt,
    List<DailyForecastEntity>? dailyForecastEntities,
  }) {
    return WeatherForecastEntity(
      cityEntity: cityEntity ?? this.cityEntity,
      cod: cod ?? this.cod,
      message: message ?? this.message,
      cnt: cnt ?? this.cnt,
      dailyForecastEntities:
          dailyForecastEntities ?? this.dailyForecastEntities,
    );
  }

  WeatherForecastModel get convertToWeatherForecastModel {
    return WeatherForecastModel(
      city: cityEntity?.convertToCityModel,
      cod: cod,
      message: message,
      cnt: cnt,
      list: dailyForecastEntities
          ?.map((dailyForecastEntity) =>
              dailyForecastEntity.convertToDailyForecastModel)
          .toList(),
    );
  }
}
