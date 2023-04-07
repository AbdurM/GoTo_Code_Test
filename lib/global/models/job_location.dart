import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'job_location.g.dart';

@JsonSerializable()
class JobLocation {
  JobLocation({
    this.type,
    this.coordinates,
    this.locationName,
    this.city,
    this.addressLine1,
    this.addressLine2,
    this.postCode,
    this.suburb,
    this.radius,
  });

  String? type;
  List<double>? coordinates;
  String? locationName;
  String? city;
  String? addressLine1;
  String? addressLine2;
  String? postCode;
  String? suburb;
  int? radius;

  String toJson() => jsonEncode(_$JobLocationToJson(this));

  static JobLocation fromJson(Map<String, dynamic> jobLocation) =>
      _$JobLocationFromJson(jobLocation);
}
