import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'industry_info.g.dart';

@JsonSerializable()
class IndustryInfo {
  IndustryInfo({this.staticDataId, this.industryName});

  String? staticDataId;
  String? industryName;

  String toJson() => jsonEncode(_$IndustryInfoToJson(this));

  static IndustryInfo fromJson(Map<String, dynamic> industryInfo) =>
      _$IndustryInfoFromJson(industryInfo);
}
