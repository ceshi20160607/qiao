// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..tokenName = json['tokenName'] as String
  ..tokenValue = json['tokenValue'] as String
  ..isLogin = json['isLogin'] as bool
  ..loginId = json['loginId'] as String
  ..loginType = json['loginType'] as String
  ..tokenTimeout = json['tokenTimeout'] as String
  ..sessionTimeout = json['sessionTimeout'] as String
  ..tokenSessionTimeout = json['tokenSessionTimeout'] as String
  ..tokenActivityTimeout = json['tokenActivityTimeout'] as String
  ..loginDevice = json['loginDevice'] as String
  ..tag = json['tag'] as String?;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'tokenName': instance.tokenName,
      'tokenValue': instance.tokenValue,
      'isLogin': instance.isLogin,
      'loginId': instance.loginId,
      'loginType': instance.loginType,
      'tokenTimeout': instance.tokenTimeout,
      'sessionTimeout': instance.sessionTimeout,
      'tokenSessionTimeout': instance.tokenSessionTimeout,
      'tokenActivityTimeout': instance.tokenActivityTimeout,
      'loginDevice': instance.loginDevice,
      'tag': instance.tag,
    };
