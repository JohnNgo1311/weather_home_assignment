import '../../entities/weather_forecast_entity.dart';

abstract class WeatherUsecase {
  Future<List<WeatherForecastEntity>> getWeatherListEntity();
  Future<WeatherForecastEntity> getWeatherEntity(
      {required String lat, required String lon, required String apiKey});
}
