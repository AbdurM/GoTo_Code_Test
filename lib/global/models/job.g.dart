// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      sId: json['sId'] as String?,
      createdDate: json['createdDate'] as String?,
      lastUpdatedDate: json['lastUpdatedDate'] as String?,
      createdBy: json['createdBy'] as String?,
      lastUpdatedBy: json['lastUpdatedBy'] as String?,
      oldId: json['oldId'] == null
          ? null
          : OldId.fromJson(json['oldId'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      jobTitle: json['jobTitle'] as String?,
      jobPostedByUserId: json['jobPostedByUserId'] as String?,
      industryInfo: json['industryInfo'] == null
          ? null
          : IndustryInfo.fromJson(json['industryInfo'] as Map<String, dynamic>),
      jobExpiryDate: json['jobExpiryDate'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      suburb: json['suburb'] as String?,
      state: json['state'] as String?,
      postCode: json['postCode'] as String?,
      country: json['country'] as String?,
      jobTypes: (json['jobTypes'] as List<dynamic>?)
          ?.map((e) => JobType.fromJson(e as Map<String, dynamic>))
          .toList(),
      salary: json['salary'] == null
          ? null
          : Salary.fromJson(json['salary'] as Map<String, dynamic>),
      description: json['description'] as String?,
      jobStartDate: json['jobStartDate'] as String?,
      jobDailyStartTime: json['jobDailyStartTime'] as String?,
      jobDailyFinishTime: json['jobDailyFinishTime'] as String?,
      jobEndDate: json['jobEndDate'] as String?,
      jobAdvertisementLength: json['jobAdvertisementLength'] as int?,
      requirements: json['requirements'] as String?,
      numberOfVacancies: json['numberOfVacancies'] as int?,
      jobApplicationIds: (json['jobApplicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      contactName: json['contactName'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      contactURL: json['contactURL'] as String?,
      reviewCount: json['reviewCount'] as int?,
      rating: json['rating'] as int?,
      jobStatus: json['jobStatus'] == null
          ? null
          : JobStatus.fromJson(json['jobStatus'] as Map<String, dynamic>),
      jobLocations: (json['jobLocations'] as List<dynamic>?)
          ?.map((e) => JobLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'sId': instance.sId,
      'createdDate': instance.createdDate,
      'lastUpdatedDate': instance.lastUpdatedDate,
      'createdBy': instance.createdBy,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'oldId': instance.oldId,
      'company': instance.company,
      'jobTitle': instance.jobTitle,
      'jobPostedByUserId': instance.jobPostedByUserId,
      'industryInfo': instance.industryInfo,
      'jobExpiryDate': instance.jobExpiryDate,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'suburb': instance.suburb,
      'state': instance.state,
      'postCode': instance.postCode,
      'country': instance.country,
      'jobTypes': instance.jobTypes,
      'salary': instance.salary,
      'description': instance.description,
      'jobStartDate': instance.jobStartDate,
      'jobDailyStartTime': instance.jobDailyStartTime,
      'jobDailyFinishTime': instance.jobDailyFinishTime,
      'jobEndDate': instance.jobEndDate,
      'jobAdvertisementLength': instance.jobAdvertisementLength,
      'requirements': instance.requirements,
      'numberOfVacancies': instance.numberOfVacancies,
      'jobApplicationIds': instance.jobApplicationIds,
      'contactName': instance.contactName,
      'contactEmail': instance.contactEmail,
      'contactPhoneNumber': instance.contactPhoneNumber,
      'contactURL': instance.contactURL,
      'reviewCount': instance.reviewCount,
      'rating': instance.rating,
      'jobStatus': instance.jobStatus,
      'jobLocations': instance.jobLocations,
    };
