// ignore_for_file: must_be_immutable

part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class GetWeatherListEvent extends WeatherEvent {
  GetWeatherListEvent();
}

class GetWeatherInforEvent extends WeatherEvent {
  final String lat;
  final String lon;
  final String apiKey;

  GetWeatherInforEvent(
      {required this.lat, required this.lon, required this.apiKey});
}
