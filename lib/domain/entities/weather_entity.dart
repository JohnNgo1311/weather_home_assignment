import 'package:weather_app/data/models/weather_model/weather_model.dart';

class WeatherEntity {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherEntity({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  WeatherEntity copyWith({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) {
    return WeatherEntity(
      id: id ?? this.id,
      main: main ?? this.main,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }

  WeatherModel get convertToWeatherModel {
    return WeatherModel(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}
