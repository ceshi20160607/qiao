import 'dart:io';

import 'package:dio/dio.dart';

import '../const/net_const.dart';

/// 自定义异常
class AppException implements Exception {
  static const String CLIENT_NET_ERROR = "网络异常，请检网络连接状态";
  static const String SERVER_NET_ERROR = "系统繁忙，请稍后再试!";
  static const String NET_CONNECT_ERROR = "网络未连接，请检查后重试";
  static const String TOO_MANY_REQUEST = "顾客太多，请稍等";

  late final String message;
  late final int code;

  AppException(int code, String message) {
    this.code = code;
    this.message = message;
  }

  String toString() {
    return "$code$message";
  }

  factory AppException.create(DioError error) {
    switch (error.type) {
      case DioErrorType.cancel:
        return BadRequestException(NetConst.NET_CODE_ERROR, "请求取消");
      case DioErrorType.connectTimeout: //连接超时
      case DioErrorType.sendTimeout: //请求超时
        return BadRequestException(NetConst.NET_CODE_ERROR, CLIENT_NET_ERROR);
      case DioErrorType.receiveTimeout: //响应超时
        return BadRequestException(NetConst.NET_CODE_ERROR, SERVER_NET_ERROR);
      case DioErrorType.response:
        try {
          int errCode = error.response!.statusCode!;
          // String errMsg = error.response.statusMessage;
          // return ErrorEntity(code: errCode, message: errMsg);
          switch (errCode) {
            case NetConst.NET_CODE_400:
              print('请求语法错误');
              return BadRequestException(errCode, SERVER_NET_ERROR);
            case NetConst.NET_CODE_401: //没有权限
            case NetConst.NET_CODE_403: //服务器拒绝执行
            case NetConst.NET_CODE_404: //无法连接服务器
            case NetConst.NET_CODE_405: //请求方法被禁止
            case NetConst.NET_CODE_500: //服务器内部错误
            case NetConst.NET_CODE_502: //无效的请求
            case NetConst.NET_CODE_503: //服务器挂了
            case NetConst.NET_CODE_505: //不支持HTTP协议请求
              return UnauthorisedException(errCode, SERVER_NET_ERROR);
            case NetConst.NET_CODE_429:
              return AppException(errCode, TOO_MANY_REQUEST);
            default:
              // return ErrorEntity(code: errCode, message: "未知错误");
              return AppException(errCode, error.response!.statusMessage!);
          }
        } on Exception catch (_) {
          print('不通1');
          return AppException(NetConst.NET_CODE_ERROR, NET_CONNECT_ERROR);
        }
      case DioErrorType.other:
        if (error.error is SocketException) {
          return AppException(NetConst.NET_CODE_ERROR, CLIENT_NET_ERROR);
        } else {
          print('不通2 ${error}');
          return AppException(NetConst.NET_CODE_ERROR, NET_CONNECT_ERROR);
        }
      default:
        print('不通3');
        return AppException(NetConst.NET_CODE_ERROR, NET_CONNECT_ERROR);
    }
  }
}

/// 请求错误
class BadRequestException extends AppException {
  BadRequestException([code, message]) : super(code, message);
}

/// 未认证异常
class UnauthorisedException extends AppException {
  UnauthorisedException([code, message]) : super(code, message);
}
