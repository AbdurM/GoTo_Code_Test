// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salary _$SalaryFromJson(Map<String, dynamic> json) => Salary(
      fromSalary: json['fromSalary'] as int?,
      toSalary: json['toSalary'] as int?,
      currency: json['currency'] as String?,
      salaryType: json['salaryType'] as String?,
    );

Map<String, dynamic> _$SalaryToJson(Salary instance) => <String, dynamic>{
      'fromSalary': instance.fromSalary,
      'toSalary': instance.toSalary,
      'currency': instance.currency,
      'salaryType': instance.salaryType,
    };
