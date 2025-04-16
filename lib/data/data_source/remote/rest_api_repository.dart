import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../models/weather_forecast_model/weather_forecast_model.dart';

part 'rest_api_repository.g.dart';

@RestApi()
abstract class RestApiRepository {
  factory RestApiRepository(Dio dio, {String baseUrl}) = _RestApiRepository;
  // @GET('/Users/AllPatients')
  // Future<List<PatientModel>> getPatientListModels();
//! Weather -----------------------------
  //? GET WEATHER INFOR
  @GET("/data/2.5/forecast/daily")
  Future<WeatherForecastModel> getWeatherForecastModel({
    @Query('lat') required String lat,
    @Query('lon') required String lon,
    @Query('cnt') int cnt = 5,
    @Query('appid') required String apiKey,
  });
  @GET('data/2.5/weather') //để hiện detail
  Future<List<WeatherForecastModel>> getWeatherListModel();
}
