import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    ///todo get token from cache
    // options.headers["Authorization"] = "Basic ZHhtaF93ZWI6ZHhtaF93ZWJfc2VjcmV0";
    // options.headers["satoken"] = "Bearer ";
    // options.headers["response-status"] = 401;
    // options.headers["Content-Type"] = "application/json";
    // options.headers["Access-Control-Allow-Origin"] = "*";
    // options.headers["Access-Control-Allow-Headers"] = "*";
    // // options.headers["Access-Control-Allow-Headers"] = "POST, OPTIONS";
    // options.headers["Access-Control-Allow-Methods"] = "*";
    // // options.headers["Access-Control-Allow-Methods"] = "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale";
    super.onRequest(options, handler);
  }

  @override
  void onResponse(dio.Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }
}
