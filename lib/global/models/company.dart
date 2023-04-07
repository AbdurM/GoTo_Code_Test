import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  Company({this.companyId, this.companyName, this.isVerified});

  String? companyId;
  String? companyName;
  bool? isVerified;

  String toJson() => jsonEncode(_$CompanyToJson(this));

  static Company fromJson(Map<String, dynamic> company) =>
      _$CompanyFromJson(company);
}
