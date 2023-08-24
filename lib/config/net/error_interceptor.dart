import 'package:dio/dio.dart';

import '../util/log_util.dart';
import 'api_exception.dart';
import 'app_exceptions.dart';

/// 错误处理拦截器
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    var appException;

    /// error统一处理
    if (err is ApiException) {
      /// 自定义异常，如后台透传异常
      appException = ApiException(code: err.code, message: err.message);
    } else {
      /// 网络异常，socket异常等
      appException = AppException.create(err);
    }

    /// 错误提示
    logE(
      'DioError===: ${appException.toString()},method=${err.requestOptions.method},method=${err.requestOptions.data},code=${err.response?.statusCode},uri=${err.requestOptions.uri}',
    );

    err.error = appException;
    super.onError(err, handler);
  }
}
