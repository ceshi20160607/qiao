import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable()
class Car {
  Car();

  late String id;
  late num carType;
  late String startTime;
  late String endTime;
  late num startKiloNumber;
  late num endKiloNumber;
  late num betweenKiloNumber;
  late num dangerNumber;
  late num futureKiloNumber;
  late String oilTitle;
  late num beforeOilNumber;
  late num oilLiterNumber;
  late String oilPrice;
  late String oilMoney;
  late String afterOilNumber;
  late String createTime;
  late String createUserId;
  late String updateTime;
  late String updateUserId;
  late String companyId;
  
  factory Car.fromJson(Map<String,dynamic> json) => _$CarFromJson(json);
  Map<String, dynamic> toJson() => _$CarToJson(this);
}
