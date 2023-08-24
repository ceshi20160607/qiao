import 'package:json_annotation/json_annotation.dart';

part 'loginuser.g.dart';

@JsonSerializable()
class Loginuser {
  Loginuser();

  String? username;
  String? password;
  late num loginType;
  late num deviceType;
  late bool isObscure;
  
  factory Loginuser.fromJson(Map<String,dynamic> json) => _$LoginuserFromJson(json);
  Map<String, dynamic> toJson() => _$LoginuserToJson(this);
}
