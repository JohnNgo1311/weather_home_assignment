import 'package:weather_app/data/models/city_model/city_model.dart';
import 'package:weather_app/domain/entities/coord_entity.dart';

class CityEntity {
  int? id;
  String? name;
  CoordEntity? coordEntity;
  String? country;
  int? population;
  int? timezone;

  CityEntity({
    this.id,
    this.name,
    this.coordEntity,
    this.country,
    this.population,
    this.timezone,
  });

  CityEntity copyWith({
    int? id,
    String? name,
    CoordEntity? coordEntity,
    String? country,
    int? population,
    int? timezone,
  }) {
    return CityEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        coordEntity: coordEntity ?? this.coordEntity,
        country: country ?? this.country,
        population: population ?? this.population,
        timezone: timezone ?? this.timezone);
  }

  CityModel get convertToCityModel {
    return CityModel(
      id: id,
      name: name,
      coordModel: coordEntity?.convertToCoordModel,
      country: country,
      population: population,
      timezone: timezone,
    );
  }
}
