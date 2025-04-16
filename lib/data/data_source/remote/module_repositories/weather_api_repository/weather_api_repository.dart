import '../../../../models/weather_forecast_model/weather_forecast_model.dart';

abstract class WeatherApiRepository {
  Future<WeatherForecastModel>? getWeatherForecastModel(
      String lat, String lon, String apiKey);
  Future<List<WeatherForecastModel>> getWeatherListModel();
}
