// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fieldvo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fieldvo _$FieldvoFromJson(Map<String, dynamic> json) => Fieldvo()
  ..id = json['id'] as String
  ..moduleType = json['moduleType'] as String
  ..fieldName = json['fieldName'] as String
  ..name = json['name'] as String
  ..type = json['type'] as num
  ..remark = json['remark'] as String?
  ..inputTips = json['inputTips'] as String?
  ..maxLength = json['maxLength'] as String?
  ..defaultValue = json['defaultValue'] as String?
  ..uniqueFlag = json['uniqueFlag'] as num?
  ..nullFlag = json['nullFlag'] as num?
  ..hiddenFlag = json['hiddenFlag'] as num?
  ..sorting = json['sorting'] as num?
  ..options = json['options'] as String?
  ..fieldType = json['fieldType'] as num?
  ..relevant = json['relevant'] as String?
  ..stylePercent = json['stylePercent'] as num?
  ..precisions = json['precisions'] as String?
  ..maxNumRestrict = json['maxNumRestrict'] as String?
  ..minNumRestrict = json['minNumRestrict'] as String?
  ..indexFlag = json['indexFlag'] as num?
  ..addFlag = json['addFlag'] as num?
  ..detailFlag = json['detailFlag'] as num?
  ..createTime = json['createTime'] as String?
  ..createUserId = json['createUserId'] as String?
  ..updateTime = json['updateTime'] as String?
  ..updateUserId = json['updateUserId'] as String?
  ..valueSingle = json['valueSingle'] as String?
  ..valueList = json['valueList'] as List<dynamic>?;

Map<String, dynamic> _$FieldvoToJson(Fieldvo instance) => <String, dynamic>{
      'id': instance.id,
      'moduleType': instance.moduleType,
      'fieldName': instance.fieldName,
      'name': instance.name,
      'type': instance.type,
      'remark': instance.remark,
      'inputTips': instance.inputTips,
      'maxLength': instance.maxLength,
      'defaultValue': instance.defaultValue,
      'uniqueFlag': instance.uniqueFlag,
      'nullFlag': instance.nullFlag,
      'hiddenFlag': instance.hiddenFlag,
      'sorting': instance.sorting,
      'options': instance.options,
      'fieldType': instance.fieldType,
      'relevant': instance.relevant,
      'stylePercent': instance.stylePercent,
      'precisions': instance.precisions,
      'maxNumRestrict': instance.maxNumRestrict,
      'minNumRestrict': instance.minNumRestrict,
      'indexFlag': instance.indexFlag,
      'addFlag': instance.addFlag,
      'detailFlag': instance.detailFlag,
      'createTime': instance.createTime,
      'createUserId': instance.createUserId,
      'updateTime': instance.updateTime,
      'updateUserId': instance.updateUserId,
      'valueSingle': instance.valueSingle,
      'valueList': instance.valueList,
    };
