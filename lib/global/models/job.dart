import 'dart:convert';
import 'package:goto_code_test/global/models/company.dart';
import 'package:goto_code_test/global/models/industry_info.dart';
import 'package:goto_code_test/global/models/job_location.dart';
import 'package:goto_code_test/global/models/job_status.dart';
import 'package:goto_code_test/global/models/job_type.dart';
import 'package:goto_code_test/global/models/old_id.dart';
import 'package:goto_code_test/global/models/salary.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job.g.dart';

@JsonSerializable()
class Job {
  Job({
    this.sId,
    this.createdDate,
    this.lastUpdatedDate,
    this.createdBy,
    this.lastUpdatedBy,
    this.oldId,
    this.company,
    this.jobTitle,
    this.jobPostedByUserId,
    this.industryInfo,
    this.jobExpiryDate,
    this.addressLine1,
    this.addressLine2,
    this.suburb,
    this.state,
    this.postCode,
    this.country,
    this.jobTypes,
    this.salary,
    this.description,
    this.jobStartDate,
    this.jobDailyStartTime,
    this.jobDailyFinishTime,
    this.jobEndDate,
    this.jobAdvertisementLength,
    this.requirements,
    this.numberOfVacancies,
    this.jobApplicationIds,
    this.contactName,
    this.contactEmail,
    this.contactPhoneNumber,
    this.contactURL,
    this.reviewCount,
    this.rating,
    this.jobStatus,
    this.jobLocations,
  });

  String? sId;
  String? createdDate;
  String? lastUpdatedDate;
  String? createdBy;
  String? lastUpdatedBy;
  OldId? oldId;
  Company? company;
  String? jobTitle;
  String? jobPostedByUserId;
  IndustryInfo? industryInfo;
  String? jobExpiryDate;
  String? addressLine1;
  String? addressLine2;
  String? suburb;
  String? state;
  String? postCode;
  String? country;
  List<JobType>? jobTypes;
  Salary? salary;
  String? description;
  String? jobStartDate;
  String? jobDailyStartTime;
  String? jobDailyFinishTime;
  String? jobEndDate;
  int? jobAdvertisementLength;
  String? requirements;
  int? numberOfVacancies;
  List<String>? jobApplicationIds;
  String? contactName;
  String? contactEmail;
  String? contactPhoneNumber;
  String? contactURL;
  int? reviewCount;
  int? rating;
  JobStatus? jobStatus;
  List<JobLocation>? jobLocations;

  String toJson() => jsonEncode(_$JobToJson(this));

  static Job fromJson(Map<String, dynamic> jobJson) => _$JobFromJson(jobJson);
}
