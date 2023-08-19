import 'package:qiao/generated/json/base/json_convert_content.dart';
import 'package:qiao/entity/po/login_entity.dart';

LoginEntity $LoginEntityFromJson(Map<String, dynamic> json) {
	final LoginEntity loginEntity = LoginEntity();
	final String? username = jsonConvert.convert<String>(json['username']);
	if (username != null) {
		loginEntity.username = username;
	}
	final String? password = jsonConvert.convert<String>(json['password']);
	if (password != null) {
		loginEntity.password = password;
	}
	final int? loginType = jsonConvert.convert<int>(json['loginType']);
	if (loginType != null) {
		loginEntity.loginType = loginType;
	}
	final int? deviceType = jsonConvert.convert<int>(json['deviceType']);
	if (deviceType != null) {
		loginEntity.deviceType = deviceType;
	}
	return loginEntity;
}

Map<String, dynamic> $LoginEntityToJson(LoginEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['username'] = entity.username;
	data['password'] = entity.password;
	data['loginType'] = entity.loginType;
	data['deviceType'] = entity.deviceType;
	return data;
}