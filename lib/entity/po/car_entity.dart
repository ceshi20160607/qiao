import 'dart:convert';

import 'package:qiao/generated/json/base/json_field.dart';
import 'package:qiao/generated/json/car_entity.g.dart';

@JsonSerializable()
class CarEntity {
  String? id;
  int? carType;
  dynamic startTime;
  dynamic endTime;
  int? startKiloNumber;
  int? endKiloNumber;
  int? betweenKiloNumber;
  int? dangerNumber;
  int? futureKiloNumber;
  dynamic oilTitle;
  int? beforeOilNumber;
  int? oilLiterNumber;
  dynamic oilPrice;
  dynamic oilMoney;
  dynamic afterOilNumber;
  String? createTime;
  String? createUserId;
  String? updateTime;
  dynamic updateUserId;
  dynamic companyId;

  CarEntity();

  factory CarEntity.fromJson(Map<String, dynamic> json) =>
      $CarEntityFromJson(json);

  Map<String, dynamic> toJson() => $CarEntityToJson(this);

  CarEntity copyWith(
      {String? id,
      int? carType,
      dynamic startTime,
      dynamic endTime,
      int? startKiloNumber,
      int? endKiloNumber,
      int? betweenKiloNumber,
      int? dangerNumber,
      int? futureKiloNumber,
      dynamic oilTitle,
      int? beforeOilNumber,
      int? oilLiterNumber,
      dynamic oilPrice,
      dynamic oilMoney,
      dynamic afterOilNumber,
      String? createTime,
      String? createUserId,
      String? updateTime,
      dynamic updateUserId,
      dynamic companyId}) {
    return CarEntity()
      ..id = id ?? this.id
      ..carType = carType ?? this.carType
      ..startTime = startTime ?? this.startTime
      ..endTime = endTime ?? this.endTime
      ..startKiloNumber = startKiloNumber ?? this.startKiloNumber
      ..endKiloNumber = endKiloNumber ?? this.endKiloNumber
      ..betweenKiloNumber = betweenKiloNumber ?? this.betweenKiloNumber
      ..dangerNumber = dangerNumber ?? this.dangerNumber
      ..futureKiloNumber = futureKiloNumber ?? this.futureKiloNumber
      ..oilTitle = oilTitle ?? this.oilTitle
      ..beforeOilNumber = beforeOilNumber ?? this.beforeOilNumber
      ..oilLiterNumber = oilLiterNumber ?? this.oilLiterNumber
      ..oilPrice = oilPrice ?? this.oilPrice
      ..oilMoney = oilMoney ?? this.oilMoney
      ..afterOilNumber = afterOilNumber ?? this.afterOilNumber
      ..createTime = createTime ?? this.createTime
      ..createUserId = createUserId ?? this.createUserId
      ..updateTime = updateTime ?? this.updateTime
      ..updateUserId = updateUserId ?? this.updateUserId
      ..companyId = companyId ?? this.companyId;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
