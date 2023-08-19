import 'package:qiao/core/page/paging_params_entity.dart';
import 'package:qiao/generated/json/base/json_convert_content.dart';

PagingParams $PagingParamsFromJson(Map<String, dynamic> json) {
  final PagingParams pagingParams = PagingParams();
  final int? page = jsonConvert.convert<int>(json['page']);
  if (page != null) {
    pagingParams.page = page;
  }
  final Map<String, dynamic>? extra =
      jsonConvert.convert<Map<String, dynamic>>(json['extra']);
  if (extra != null) {
    pagingParams.extra = extra;
  }
  final Map<String, dynamic>? model =
      jsonConvert.convert<Map<String, dynamic>>(json['model']);
  if (model != null) {
    pagingParams.model = model;
  }
  final String? order = jsonConvert.convert<String>(json['order']);
  if (order != null) {
    pagingParams.order = order;
  }
  final int? limit = jsonConvert.convert<int>(json['limit']);
  if (limit != null) {
    pagingParams.limit = limit;
  }
  final String? sort = jsonConvert.convert<String>(json['sort']);
  if (sort != null) {
    pagingParams.sort = sort;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    pagingParams.total = total;
  }
  return pagingParams;
}

Map<String, dynamic> $PagingParamsToJson(PagingParams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['page'] = entity.page;
  data['limit'] = entity.limit;
  return data;
}
