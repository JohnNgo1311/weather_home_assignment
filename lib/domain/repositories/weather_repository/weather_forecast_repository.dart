import '../../../data/models/model.dart';

abstract class WeatherRepository {
  Future<List<WeatherForecastModel>> getListWeatherForecastModels();
  Future<WeatherForecastModel>? getWeatherInforModel(
      {required String lat, required String lon, required String apiKey});
}
