import 'package:json_annotation/json_annotation.dart';

part 'fieldvo.g.dart';

@JsonSerializable()
class Fieldvo {
  Fieldvo();

  late String id;
  late String moduleType;
  late String fieldName;
  late String name;
  late num type;
  String? remark;
  String? inputTips;
  String? maxLength;
  String? defaultValue;
  num? uniqueFlag;
  num? nullFlag;
  num? hiddenFlag;
  num? sorting;
  String? options;
  num? fieldType;
  String? relevant;
  num? stylePercent;
  String? precisions;
  String? maxNumRestrict;
  String? minNumRestrict;
  num? indexFlag;
  num? addFlag;
  num? detailFlag;
  String? createTime;
  String? createUserId;
  String? updateTime;
  String? updateUserId;
  String? valueSingle;
  List? valueList;
  
  factory Fieldvo.fromJson(Map<String,dynamic> json) => _$FieldvoFromJson(json);
  Map<String, dynamic> toJson() => _$FieldvoToJson(this);
}
