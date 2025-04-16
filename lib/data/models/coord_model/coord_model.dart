import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/domain/entities/coord_entity.dart';

part 'coord_model.g.dart';

@JsonSerializable()
class CoordModel {
  @JsonKey(name: "lon")
  double? lon;
  @JsonKey(name: "lat")
  double? lat;

  CoordModel({
    this.lon,
    this.lat,
  });

  factory CoordModel.fromJson(Map<String, dynamic> json) =>
      _$CoordModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordModelToJson(this);

  CoordEntity getCoordEntity() {
    return CoordEntity(
      lon: lon,
      lat: lat,
    );
  }
}
