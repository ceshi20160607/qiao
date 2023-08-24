import 'package:json_annotation/json_annotation.dart';

part 'field.g.dart';

@JsonSerializable()
class Field {
  Field();

  late String fieldId;
  late String parentFieldId;
  late num label;
  late String fieldName;
  late String name;
  late num type;
  late String inputTips;
  late num maxLength;
  late String defaultValue;
  late num isUnique;
  late num isNull;
  late String options;
  late num fieldType;
  late String companyId;
  late List setting;
  late num authLevel;
  late String value;
  late num isHidden;
  late num sorting;
  late num stylePercent;
  String? maxNumRestrict;
  String? minNumRestrict;
  String? precisions;
  String? optionsData;
  String? remark;
  num? isMulti;
  String? batchId;
  
  factory Field.fromJson(Map<String,dynamic> json) => _$FieldFromJson(json);
  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
