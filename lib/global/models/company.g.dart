// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      companyId: json['companyId'] as String?,
      companyName: json['companyName'] as String?,
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'isVerified': instance.isVerified,
    };
