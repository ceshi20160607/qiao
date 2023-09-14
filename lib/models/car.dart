import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  Car();

  late String id;
  late num carType;
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
  late String createTime;
  String? createUserId;
  String? updateTime;
  String? updateUserId;
  String? companyId;
  
  factory Car.fromJson(Map<String,dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}
