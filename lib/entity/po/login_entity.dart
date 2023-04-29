import 'dart:convert';

import 'package:qiao/generated/json/base/json_field.dart';
import 'package:qiao/generated/json/login_entity.g.dart';

@JsonSerializable()
class LoginEntity {
  String? username;
  String? password;
  int loginType = 0;
  int deviceType = 0;

  LoginEntity();

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      $LoginEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
