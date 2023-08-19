// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Field _$FieldFromJson(Map<String, dynamic> json) => Field()
  ..fieldId = json['fieldId'] as String
  ..parentFieldId = json['parentFieldId'] as String
  ..label = json['label'] as num
  ..fieldName = json['fieldName'] as String
  ..name = json['name'] as String
  ..type = json['type'] as num
  ..inputTips = json['inputTips'] as String
  ..maxLength = json['maxLength'] as num
  ..defaultValue = json['defaultValue'] as String
  ..isUnique = json['isUnique'] as num
  ..isNull = json['isNull'] as num
  ..options = json['options'] as String
  ..fieldType = json['fieldType'] as num
  ..companyId = json['companyId'] as String
  ..setting = json['setting'] as List<dynamic>
  ..authLevel = json['authLevel'] as num
  ..value = json['value'] as String
  ..isHidden = json['isHidden'] as num
  ..sorting = json['sorting'] as num
  ..stylePercent = json['stylePercent'] as num
  ..maxNumRestrict = json['maxNumRestrict'] as String
  ..minNumRestrict = json['minNumRestrict'] as String
  ..precisions = json['precisions'] as String
  ..optionsData = json['optionsData'] as String
  ..remark = json['remark'] as String
  ..isMulti = json['isMulti'] as num
  ..batchId = json['batchId'] as String;

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'fieldId': instance.fieldId,
      'parentFieldId': instance.parentFieldId,
      'label': instance.label,
      'fieldName': instance.fieldName,
      'name': instance.name,
      'type': instance.type,
      'inputTips': instance.inputTips,
      'maxLength': instance.maxLength,
      'defaultValue': instance.defaultValue,
      'isUnique': instance.isUnique,
      'isNull': instance.isNull,
      'options': instance.options,
      'fieldType': instance.fieldType,
      'companyId': instance.companyId,
      'setting': instance.setting,
      'authLevel': instance.authLevel,
      'value': instance.value,
      'isHidden': instance.isHidden,
      'sorting': instance.sorting,
      'stylePercent': instance.stylePercent,
      'maxNumRestrict': instance.maxNumRestrict,
      'minNumRestrict': instance.minNumRestrict,
      'precisions': instance.precisions,
      'optionsData': instance.optionsData,
      'remark': instance.remark,
      'isMulti': instance.isMulti,
      'batchId': instance.batchId,
    };
