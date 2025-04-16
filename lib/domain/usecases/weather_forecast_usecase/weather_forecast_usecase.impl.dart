import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/entities/weather_forecast_entity.dart';

import '../../repositories/weather_repository/weather_forecast_repository.dart';
import 'weather_forecast_usecase.dart';

@Injectable(
  as: WeatherUsecase,
)
class WeatherUsecaseImpl extends WeatherUsecase {
  final WeatherRepository _repository;
  WeatherUsecaseImpl(this._repository);
  @override
  Future<WeatherForecastEntity> getWeatherEntity(
      {required String lat,
      required String lon,
      required String apiKey}) async {
    final response = await _repository.getWeatherInforModel(
      lat: lat,
      lon: lon,
      apiKey: apiKey,
    );

    if (response != null) {
      final entity = response.getWeatherEntity();
      return entity;
    } else {
      throw Exception('Failed to fetch weather information');
    }
  }

  @override
  Future<List<WeatherForecastEntity>> getWeatherListEntity() async {
    final response = await _repository.getListWeatherForecastModels();

    if (response.isNotEmpty) {
      final entities =
          response.map((model) => model.getWeatherEntity()).toList();
      return entities;
    } else {
      throw Exception('No weather data available');
    }
  }
}
