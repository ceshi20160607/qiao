import 'dart:convert';

import 'package:qiao/generated/json/base/json_field.dart';
import 'package:qiao/generated/json/sa_token_entity.g.dart';

@JsonSerializable()
class SaTokenEntity {
  String? tokenName;
  String? tokenValue;
  bool? isLogin;
  String? loginId;
  String? loginType;
  int? tokenTimeout;
  int? sessionTimeout;
  int? tokenSessionTimeout;
  int? tokenActivityTimeout;
  String? loginDevice;
  dynamic tag;

  SaTokenEntity();

  factory SaTokenEntity.fromJson(Map<String, dynamic> json) =>
      $SaTokenEntityFromJson(json);

  Map<String, dynamic> toJson() => $SaTokenEntityToJson(this);

  SaTokenEntity copyWith(
      {String? tokenName,
      String? tokenValue,
      bool? isLogin,
      String? loginId,
      String? loginType,
      int? tokenTimeout,
      int? sessionTimeout,
      int? tokenSessionTimeout,
      int? tokenActivityTimeout,
      String? loginDevice,
      dynamic tag}) {
    return SaTokenEntity()
      ..tokenName = tokenName ?? this.tokenName
      ..tokenValue = tokenValue ?? this.tokenValue
      ..isLogin = isLogin ?? this.isLogin
      ..loginId = loginId ?? this.loginId
      ..loginType = loginType ?? this.loginType
      ..tokenTimeout = tokenTimeout ?? this.tokenTimeout
      ..sessionTimeout = sessionTimeout ?? this.sessionTimeout
      ..tokenSessionTimeout = tokenSessionTimeout ?? this.tokenSessionTimeout
      ..tokenActivityTimeout = tokenActivityTimeout ?? this.tokenActivityTimeout
      ..loginDevice = loginDevice ?? this.loginDevice
      ..tag = tag ?? this.tag;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
