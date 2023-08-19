class Env {
  ///开发环境
  static const String dev = "dev";

  ///测试环境
  static const String test = "test";

  ///测试环境
  static const String pre = "pre";

  ///正式环境
  static const String prod = "prod";

  static String getEnvConfig({String env = dev}) {
    switch (env) {
      case test:
        return 'http:localhost:8888/';
      case pre:
        return 'http:localhost:8888/';
      case prod:
        return 'http:localhost:8888/';
      default:
        return 'http:localhost:8888/';
    }
  }
}
