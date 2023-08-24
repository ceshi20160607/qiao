// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loginuser _$LoginuserFromJson(Map<String, dynamic> json) => Loginuser()
  ..username = json['username'] as String?
  ..password = json['password'] as String?
  ..loginType = json['loginType'] as num
  ..deviceType = json['deviceType'] as num
  ..isObscure = json['isObscure'] as bool;

Map<String, dynamic> _$LoginuserToJson(Loginuser instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'loginType': instance.loginType,
      'deviceType': instance.deviceType,
      'isObscure': instance.isObscure,
    };
