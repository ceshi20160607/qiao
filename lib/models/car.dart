import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  Car();

  late String id;
  late num carType;
  String? startTime;
  String? endTime;
  late num startKiloNumber;
  late num endKiloNumber;
  late num betweenKiloNumber;
  late num dangerNumber;
  late num futureKiloNumber;
  String? oilTitle;
  late num beforeOilNumber;
  late num oilLiterNumber;
  num? oilPrice;
  num? oilMoney;
  num? afterOilNumber;
  late String createTime;
  late String createUserId;
  late String updateTime;
  String? updateUserId;
  String? companyId;
  
  factory Car.fromJson(Map<String,dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}
