import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  String id;
  num carType;
  String? startTime;
  String? endTime;
  num? startKiloNumber;
  num? endKiloNumber;
  num? betweenKiloNumber;
  num? dangerNumber;
  num? futureKiloNumber;
  String? oilTitle;
  num? beforeOilNumber;
  num? oilLiterNumber;
  num? oilPrice;
  num? oilMoney;
  num? afterOilNumber;
  String createTime;
  String? createUserId;
  String? updateTime;
  String? updateUserId;
  String? companyId;

  Car(
      {this.id = '',
      this.carType = 0,
      this.startTime,
      this.endTime,
      this.startKiloNumber,
      this.endKiloNumber,
      this.betweenKiloNumber,
      this.dangerNumber,
      this.futureKiloNumber,
      this.oilTitle,
      this.beforeOilNumber,
      this.oilLiterNumber,
      this.oilPrice,
      this.oilMoney,
      this.afterOilNumber,
      this.createTime = '',
      this.createUserId,
      this.updateTime,
      this.updateUserId,
      this.companyId});

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}
