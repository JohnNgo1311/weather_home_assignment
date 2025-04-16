import 'package:injectable/injectable.dart';
import 'package:weather_app/data/models/model.dart';
import '../../../data/data_source/remote/module_repositories/weather_api_repository/weather_api_repository.dart';
import 'weather_forecast_repository.dart';

@Injectable(
  as: WeatherRepository,
)
class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherApiRepository _weatherApi;
  WeatherRepositoryImpl(
    this._weatherApi,
  );

  @override
  Future<List<WeatherForecastModel>> getListWeatherForecastModels() {
    return _weatherApi.getWeatherListModel();
  }

  @override
  Future<WeatherForecastModel>? getWeatherInforModel(
      {required String lat, required String lon, required String apiKey}) {
    return _weatherApi.getWeatherForecastModel(lat, lon, apiKey);
  }
}

//repo này chứa một cái list<UserModel>
