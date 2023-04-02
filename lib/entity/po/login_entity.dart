import 'package:qiao/generated/json/base/json_field.dart';
import 'package:qiao/generated/json/login_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class LoginEntity {
	String? username;
	String? password;
	int? loginType;

	LoginEntity();

	factory LoginEntity.fromJson(Map<String, dynamic> json) => $LoginEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}