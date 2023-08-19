// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) => Car()
  ..id = json['id'] as String
  ..carType = json['carType'] as num
  ..startTime = json['startTime'] as String
  ..endTime = json['endTime'] as String
  ..startKiloNumber = json['startKiloNumber'] as num
  ..endKiloNumber = json['endKiloNumber'] as num
  ..betweenKiloNumber = json['betweenKiloNumber'] as num
  ..dangerNumber = json['dangerNumber'] as num
  ..futureKiloNumber = json['futureKiloNumber'] as num
  ..oilTitle = json['oilTitle'] as String
  ..beforeOilNumber = json['beforeOilNumber'] as num
  ..oilLiterNumber = json['oilLiterNumber'] as num
  ..oilPrice = json['oilPrice'] as String
  ..oilMoney = json['oilMoney'] as String
  ..afterOilNumber = json['afterOilNumber'] as String
  ..createTime = json['createTime'] as String
  ..createUserId = json['createUserId'] as String
  ..updateTime = json['updateTime'] as String
  ..updateUserId = json['updateUserId'] as String
  ..companyId = json['companyId'] as String;

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'carType': instance.carType,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'startKiloNumber': instance.startKiloNumber,
      'endKiloNumber': instance.endKiloNumber,
      'betweenKiloNumber': instance.betweenKiloNumber,
      'dangerNumber': instance.dangerNumber,
      'futureKiloNumber': instance.futureKiloNumber,
      'oilTitle': instance.oilTitle,
      'beforeOilNumber': instance.beforeOilNumber,
      'oilLiterNumber': instance.oilLiterNumber,
      'oilPrice': instance.oilPrice,
      'oilMoney': instance.oilMoney,
      'afterOilNumber': instance.afterOilNumber,
      'createTime': instance.createTime,
      'createUserId': instance.createUserId,
      'updateTime': instance.updateTime,
      'updateUserId': instance.updateUserId,
      'companyId': instance.companyId,
    };
