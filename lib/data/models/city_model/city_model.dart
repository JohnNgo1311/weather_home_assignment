import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/models/coord_model/coord_model.dart';
import 'package:weather_app/domain/entities/city_entity.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "coord")
  CoordModel? coordModel;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "population")
  int? population;
  @JsonKey(name: "timezone")
  int? timezone;

  CityModel({
    this.id,
    this.name,
    this.coordModel,
    this.country,
    this.population,
    this.timezone,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
  Map<String, dynamic> toJson() => _$CityModelToJson(this);

  CityEntity getCityEntity() {
    return CityEntity(
      id: id,
      name: name,
      coordEntity: coordModel?.getCoordEntity(),
      country: country,
      population: population,
      timezone: timezone,
    );
  }
}
