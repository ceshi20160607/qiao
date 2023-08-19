import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../api/rest_client.dart';
import '../env/env.dart';
import 'api_result_interceptor.dart';
import 'error_interceptor.dart';
import 'middle_interceptor.dart';

class Http {
  ///超时时间
  static const int CONNECT_TIMEOUT = 30000;
  static const int RECEIVE_TIMEOUT = 30000;

  /// 实例化
  static final Http _instance = Http._internal();

  /// 构造返回单例
  factory Http() => _instance;

  late Dio dio;
  late RestClient client;

  static late String ip;
  static late String dk;

  Http._internal() {
    BaseOptions options = BaseOptions(
      connectTimeout: CONNECT_TIMEOUT,

      /// 响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: RECEIVE_TIMEOUT,
      baseUrl: Env.getEnvConfig(),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.bytes,
      receiveDataWhenStatusError: false,
    );

    dio = Dio(options);
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback = (cert, host, port) {
        return true;
      };
      return null;
    };
    // 添加error拦截器
    dio.interceptors.add(MiddleInterceptor());
    dio.interceptors.add(ErrorInterceptor());
    dio.interceptors.add(ApiResultInterceptor());
    client = RestClient(dio, baseUrl: Env.getEnvConfig());
  }
}
