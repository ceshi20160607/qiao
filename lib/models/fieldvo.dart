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
  late String remark;
  late String inputTips;
  late String maxLength;
  late String defaultValue;
  late num uniqueFlag;
  late num nullFlag;
  late num hiddenFlag;
  late num sorting;
  late String options;
  late num fieldType;
  late String relevant;
  late num stylePercent;
  late String precisions;
  late String maxNumRestrict;
  late String minNumRestrict;
  late num indexFlag;
  late num addFlag;
  late num detailFlag;
  late String createTime;
  late String createUserId;
  late String updateTime;
  late String updateUserId;
  late String valueSingle;
  late String valueList;
  
  factory Fieldvo.fromJson(Map<String,dynamic> json) => _$FieldvoFromJson(json);
  Map<String, dynamic> toJson() => _$FieldvoToJson(this);
}
