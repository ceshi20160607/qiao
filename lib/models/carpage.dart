import 'package:json_annotation/json_annotation.dart';
import "car.dart";
part 'carpage.g.dart';

@JsonSerializable()
class Carpage {
  Carpage();

  late List<Car> list;
  late num totalRow;
  late num pageSize;
  late num pageNumber;
  late String current;
  late num totalPage;
  late String pages;
  
  factory Carpage.fromJson(Map<String,dynamic> json) => _$CarpageFromJson(json);
  Map<String, dynamic> toJson() => _$CarpageToJson(this);
}
