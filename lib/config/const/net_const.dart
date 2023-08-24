class NetConst {
  ///网络状态
  static const NET_CODE_SUCESS = 200;
  static const NET_CODE_ERROR = -1;
  //请求错误
  static const NET_CODE_400 = 400;
  //没有权限
  static const NET_CODE_401 = 401;
  //服务器拒绝执行
  static const NET_CODE_403 = 403;
  //无法连接服务器
  static const NET_CODE_404 = 404;
  //请求方法被禁止
  static const NET_CODE_405 = 405;
  //服务器内部错误
  static const NET_CODE_500 = 500;
  //无效的请求
  static const NET_CODE_502 = 502;
  //服务器挂了
  static const NET_CODE_503 = 503;
  //不支持HTTP协议请求
  static const NET_CODE_505 = 505;
  //
  static const NET_CODE_429 = 429;

  ///

  ///超时时间
  static const int CONNECT_TIMEOUT = 30000;
  static const int RECEIVE_TIMEOUT = 30000;

  /// 其他常量
}
