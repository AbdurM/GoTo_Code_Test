import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'old_id.g.dart';

@JsonSerializable()
class OldId {
  OldId({this.subtype, this.data});

  int? subtype;
  String? data;

  String toJson() => jsonEncode(_$OldIdToJson(this));

  static OldId fromJson(Map<String, dynamic> oldId) => _$OldIdFromJson(oldId);
}
