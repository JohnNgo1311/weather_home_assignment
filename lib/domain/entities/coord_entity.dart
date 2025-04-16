import '../../data/models/coord_model/coord_model.dart';

class CoordEntity {
  double? lon;
  double? lat;

  CoordEntity({
    this.lon,
    this.lat,
  });

  CoordEntity copyWith({
    double? lon,
    double? lat,
  }) {
    return CoordEntity(
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
    );
  }

  CoordModel get convertToCoordModel {
    return CoordModel(
      lon: lon,
      lat: lat,
    );
  }
}
