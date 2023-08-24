import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:qiao/config/const/net_const.dart';

import '../const/sys_const.dart';
import '../util/log_util.dart';
import 'result.dart';

class ApiResultInterceptor extends Interceptor {
  @override
  Future<void> onResponse(
      Response resp, ResponseInterceptorHandler handler) async {
    var decode = utf8.decode(resp.data);
    resp.data = json.decode(decode);
    String urlPath = resp.requestOptions.path;
    logD('response-urlPath--->:$urlPath');
    logD('response--->:${json.encode(resp.data)}');

    /// http error错误处理
    if (resp.statusCode != NetConst.NET_CODE_SUCESS) {
      handler.reject(
          DioError(requestOptions: resp.requestOptions, response: resp), true);
      return;
    }
    final result =
        Result<dynamic>.fromMapJson(resp.data as Map<String, dynamic>);

    if (result.code == SysConst.SYS_CODE_SUCCESS) {
      /// 成功
      handler.next(resp);
      return;
    } else {
      /// 失败
      handler.reject(
          result.toException()..requestOptions = resp.requestOptions, true);
    }
    // handler.next(resp);
  }
}
