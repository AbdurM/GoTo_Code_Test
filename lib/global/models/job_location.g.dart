// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobLocation _$JobLocationFromJson(Map<String, dynamic> json) => JobLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      locationName: json['locationName'] as String?,
      city: json['city'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      postCode: json['postCode'] as String?,
      suburb: json['suburb'] as String?,
      radius: json['radius'] as int?,
    );

Map<String, dynamic> _$JobLocationToJson(JobLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'locationName': instance.locationName,
      'city': instance.city,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'postCode': instance.postCode,
      'suburb': instance.suburb,
      'radius': instance.radius,
    };
