import 'dart:convert';

import 'package:qiao/generated/json/base/json_field.dart';
import 'package:qiao/generated/json/paging_params_entity.g.dart';

@JsonSerializable()
class PagingParams {
  int page = 1;
  @JSONField(serialize: false)
  Map<String, dynamic> extra = {};
  @JSONField(serialize: false)
  Map<String, dynamic> model = {};
  @JSONField(serialize: false)
  String? order = 'descending';
  int limit = 10;
  @JSONField(serialize: false)
  String? sort = "id";

  @JSONField(serialize: false)
  int? total;

  PagingParams();

  factory PagingParams.fromJson(Map<String, dynamic> json) =>
      $PagingParamsFromJson(json);

  Map<String, dynamic> toJson() => $PagingParamsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  factory PagingParams.create(
      {required int pageIndex,
      int pageSize = 10,
      Map<String, dynamic>? model}) {
    var request = PagingParams();
    request.page = pageIndex;
    request.limit = pageSize;
    // request.model = model ?? {};
    return request;
  }
}
