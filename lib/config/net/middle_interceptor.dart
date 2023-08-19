import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:qiao/config/i18n/key_str.dart';

import '../util/log_util.dart';
import '../util/shared_preferences.dart';

class MiddleInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // 将数据内容json 转为字符串
    String content = json.encode(options.data);
    // 获取url 路径
    String urlPath = options.path;
    logD("requestPath---->:$urlPath");
    logD("requestParam--->:${options.queryParameters}");
    //---------------------------token-----------------------------
    bool isLogin = SharedPreferencesUtil.getBool(KS.isLogin) ?? false;
    if (isLogin) {
      String satoken = SharedPreferencesUtil.getString(KS.saToken) ?? "";
      if (satoken != "") {
        options.headers["satoken"] = satoken;
      }
      logD("satoken---->:$satoken");
    }
    //---------------------------token-----------------------------
    return handler.next(options);
  }
}
