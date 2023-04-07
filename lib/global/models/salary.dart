import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'salary.g.dart';

@JsonSerializable()
class Salary {
  Salary({this.fromSalary, this.toSalary, this.currency, this.salaryType});

  int? fromSalary;
  int? toSalary;
  String? currency;
  String? salaryType;

  String toJson() => jsonEncode(_$SalaryToJson(this));

  static Salary fromJson(Map<String, dynamic> salary) =>
      _$SalaryFromJson(salary);
}
