import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../../presentation/common_widget/enum_common.dart';
import '../../../../models/weather_forecast_model/weather_forecast_model.dart';
import '../../rest_api_repository.dart';
import 'weather_api_repository.dart';

@Injectable(as: WeatherApiRepository)
class WeatherApiRepositoryImpl implements WeatherApiRepository {
  final Dio dio;
  final RestApiRepository restApi;

  WeatherApiRepositoryImpl({
    required this.dio,
  }) : restApi = RestApiRepository(dio, baseUrl: baseUrl);

  @override
  Future<List<WeatherForecastModel>> getWeatherListModel() {
    return restApi.getWeatherListModel();
  }

  @override
  Future<WeatherForecastModel>? getWeatherForecastModel(
      String lat, String lon, String apiKey) {
    print('lat: $lat, lon: $lon, apiKey: $apiKey');
    print("Fetching touch API");
    return restApi.getWeatherForecastModel(
      lat: lat,
      lon: lon,
      apiKey: apiKey,
    );
  }
}
