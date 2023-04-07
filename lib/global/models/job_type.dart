import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'job_type.g.dart';

@JsonSerializable()
class JobType {
  JobType({this.staticDataId, this.jobTypeName});
  String? staticDataId;
  String? jobTypeName;

  String toJson() => jsonEncode(_$JobTypeToJson(this));

  static JobType fromJson(Map<String, dynamic> jobType) =>
      _$JobTypeFromJson(jobType);
}
