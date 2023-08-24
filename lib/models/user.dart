import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  late String tokenName;
  late String tokenValue;
  late bool isLogin;
  late String loginId;
  late String loginType;
  late String tokenTimeout;
  late String sessionTimeout;
  late String tokenSessionTimeout;
  late String tokenActivityTimeout;
  late String loginDevice;
  String? tag;
  
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
