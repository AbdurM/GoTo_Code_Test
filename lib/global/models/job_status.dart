import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'job_status.g.dart';

@JsonSerializable()
class JobStatus {
  JobStatus({this.staticDataId, this.jobStatusName});

  String? staticDataId;
  String? jobStatusName;

  String toJson() => jsonEncode(_$JobStatusToJson(this));

  static JobStatus fromJson(Map<String, dynamic> jobStatus) =>
      _$JobStatusFromJson(jobStatus);
}
