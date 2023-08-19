import 'package:qiao/entity/po/car_entity.dart';
import 'package:qiao/generated/json/base/json_convert_content.dart';

CarEntity $CarEntityFromJson(Map<String, dynamic> json) {
  final CarEntity carEntity = CarEntity();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    carEntity.id = id;
  }
  final int? carType = jsonConvert.convert<int>(json['carType']);
  if (carType != null) {
    carEntity.carType = carType;
  }
  final dynamic startTime = jsonConvert.convert<dynamic>(json['startTime']);
  if (startTime != null) {
    carEntity.startTime = startTime;
  }
  final dynamic endTime = jsonConvert.convert<dynamic>(json['endTime']);
  if (endTime != null) {
    carEntity.endTime = endTime;
  }
  final int? startKiloNumber =
      jsonConvert.convert<int>(json['startKiloNumber']);
  if (startKiloNumber != null) {
    carEntity.startKiloNumber = startKiloNumber;
  }
  final int? endKiloNumber = jsonConvert.convert<int>(json['endKiloNumber']);
  if (endKiloNumber != null) {
    carEntity.endKiloNumber = endKiloNumber;
  }
  final int? betweenKiloNumber =
      jsonConvert.convert<int>(json['betweenKiloNumber']);
  if (betweenKiloNumber != null) {
    carEntity.betweenKiloNumber = betweenKiloNumber;
  }
  final int? dangerNumber = jsonConvert.convert<int>(json['dangerNumber']);
  if (dangerNumber != null) {
    carEntity.dangerNumber = dangerNumber;
  }
  final int? futureKiloNumber =
      jsonConvert.convert<int>(json['futureKiloNumber']);
  if (futureKiloNumber != null) {
    carEntity.futureKiloNumber = futureKiloNumber;
  }
  final dynamic oilTitle = jsonConvert.convert<dynamic>(json['oilTitle']);
  if (oilTitle != null) {
    carEntity.oilTitle = oilTitle;
  }
  final int? beforeOilNumber =
      jsonConvert.convert<int>(json['beforeOilNumber']);
  if (beforeOilNumber != null) {
    carEntity.beforeOilNumber = beforeOilNumber;
  }
  final int? oilLiterNumber = jsonConvert.convert<int>(json['oilLiterNumber']);
  if (oilLiterNumber != null) {
    carEntity.oilLiterNumber = oilLiterNumber;
  }
  final dynamic oilPrice = jsonConvert.convert<dynamic>(json['oilPrice']);
  if (oilPrice != null) {
    carEntity.oilPrice = oilPrice;
  }
  final dynamic oilMoney = jsonConvert.convert<dynamic>(json['oilMoney']);
  if (oilMoney != null) {
    carEntity.oilMoney = oilMoney;
  }
  final dynamic afterOilNumber =
      jsonConvert.convert<dynamic>(json['afterOilNumber']);
  if (afterOilNumber != null) {
    carEntity.afterOilNumber = afterOilNumber;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    carEntity.createTime = createTime;
  }
  final String? createUserId =
      jsonConvert.convert<String>(json['createUserId']);
  if (createUserId != null) {
    carEntity.createUserId = createUserId;
  }
  final String? updateTime = jsonConvert.convert<String>(json['updateTime']);
  if (updateTime != null) {
    carEntity.updateTime = updateTime;
  }
  final dynamic updateUserId =
      jsonConvert.convert<dynamic>(json['updateUserId']);
  if (updateUserId != null) {
    carEntity.updateUserId = updateUserId;
  }
  final dynamic companyId = jsonConvert.convert<dynamic>(json['companyId']);
  if (companyId != null) {
    carEntity.companyId = companyId;
  }
  return carEntity;
}

Map<String, dynamic> $CarEntityToJson(CarEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['carType'] = entity.carType;
  data['startTime'] = entity.startTime;
  data['endTime'] = entity.endTime;
  data['startKiloNumber'] = entity.startKiloNumber;
  data['endKiloNumber'] = entity.endKiloNumber;
  data['betweenKiloNumber'] = entity.betweenKiloNumber;
  data['dangerNumber'] = entity.dangerNumber;
  data['futureKiloNumber'] = entity.futureKiloNumber;
  data['oilTitle'] = entity.oilTitle;
  data['beforeOilNumber'] = entity.beforeOilNumber;
  data['oilLiterNumber'] = entity.oilLiterNumber;
  data['oilPrice'] = entity.oilPrice;
  data['oilMoney'] = entity.oilMoney;
  data['afterOilNumber'] = entity.afterOilNumber;
  data['createTime'] = entity.createTime;
  data['createUserId'] = entity.createUserId;
  data['updateTime'] = entity.updateTime;
  data['updateUserId'] = entity.updateUserId;
  data['companyId'] = entity.companyId;
  return data;
}
