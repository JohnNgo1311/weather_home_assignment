import 'package:weather_app/data/models/feels_like_model/feels_like_model.dart';

class FeelsLikeEntity {
  double? day;
  double? night;
  double? eve;
  double? morn;

  FeelsLikeEntity({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  FeelsLikeEntity copyWith({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) {
    return FeelsLikeEntity(
      day: day ?? this.day,
      night: night ?? this.night,
      eve: eve ?? this.eve,
      morn: morn ?? this.morn,
    );
  }

  FeelsLikeModel get convertToFeelsLikeModel {
    return FeelsLikeModel(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }
}
