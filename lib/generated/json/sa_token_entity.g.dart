import 'package:qiao/entity/po/sa_token_entity.dart';
import 'package:qiao/generated/json/base/json_convert_content.dart';

SaTokenEntity $SaTokenEntityFromJson(Map<String, dynamic> json) {
  final SaTokenEntity saTokenEntity = SaTokenEntity();
  final String? tokenName = jsonConvert.convert<String>(json['tokenName']);
  if (tokenName != null) {
    saTokenEntity.tokenName = tokenName;
  }
  final String? tokenValue = jsonConvert.convert<String>(json['tokenValue']);
  if (tokenValue != null) {
    saTokenEntity.tokenValue = tokenValue;
  }
  final bool? isLogin = jsonConvert.convert<bool>(json['isLogin']);
  if (isLogin != null) {
    saTokenEntity.isLogin = isLogin;
  }
  final String? loginId = jsonConvert.convert<String>(json['loginId']);
  if (loginId != null) {
    saTokenEntity.loginId = loginId;
  }
  final String? loginType = jsonConvert.convert<String>(json['loginType']);
  if (loginType != null) {
    saTokenEntity.loginType = loginType;
  }
  final int? tokenTimeout = jsonConvert.convert<int>(json['tokenTimeout']);
  if (tokenTimeout != null) {
    saTokenEntity.tokenTimeout = tokenTimeout;
  }
  final int? sessionTimeout = jsonConvert.convert<int>(json['sessionTimeout']);
  if (sessionTimeout != null) {
    saTokenEntity.sessionTimeout = sessionTimeout;
  }
  final int? tokenSessionTimeout =
      jsonConvert.convert<int>(json['tokenSessionTimeout']);
  if (tokenSessionTimeout != null) {
    saTokenEntity.tokenSessionTimeout = tokenSessionTimeout;
  }
  final int? tokenActivityTimeout =
      jsonConvert.convert<int>(json['tokenActivityTimeout']);
  if (tokenActivityTimeout != null) {
    saTokenEntity.tokenActivityTimeout = tokenActivityTimeout;
  }
  final String? loginDevice = jsonConvert.convert<String>(json['loginDevice']);
  if (loginDevice != null) {
    saTokenEntity.loginDevice = loginDevice;
  }
  final dynamic tag = jsonConvert.convert<dynamic>(json['tag']);
  if (tag != null) {
    saTokenEntity.tag = tag;
  }
  return saTokenEntity;
}

Map<String, dynamic> $SaTokenEntityToJson(SaTokenEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tokenName'] = entity.tokenName;
  data['tokenValue'] = entity.tokenValue;
  data['isLogin'] = entity.isLogin;
  data['loginId'] = entity.loginId;
  data['loginType'] = entity.loginType;
  data['tokenTimeout'] = entity.tokenTimeout;
  data['sessionTimeout'] = entity.sessionTimeout;
  data['tokenSessionTimeout'] = entity.tokenSessionTimeout;
  data['tokenActivityTimeout'] = entity.tokenActivityTimeout;
  data['loginDevice'] = entity.loginDevice;
  data['tag'] = entity.tag;
  return data;
}
