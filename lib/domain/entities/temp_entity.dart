import 'package:weather_app/data/models/temp_model/temp_model.dart';

class TempEntity {
  double? day;
  double? min;
  double? max;
  double? night;
  double? eve;
  double? morn;

  TempEntity({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  TempEntity copyWith({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) {
    return TempEntity(
      day: day ?? this.day,
      min: min ?? this.min,
      max: max ?? this.max,
      night: night ?? this.night,
      eve: eve ?? this.eve,
      morn: morn ?? this.morn,
    );
  }

  TempModel get convertToTempModel {
    return TempModel(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  double setCelsiusTemp() {
    if (day != null) {
      return day! - 273.15;
    } else {
      return 0.0;
    }
  }
}
