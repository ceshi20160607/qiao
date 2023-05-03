import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:qiao/entity/po/login_entity.dart';
import 'package:qiao/entity/po/sa_token_entity.dart';
import 'package:qiao/modules/login/home/home_view.dart';
import 'package:qiao/service/api_service.dart';

import '../../../core/share/SharedPreference.dart';
import '../../../core/share/shared_preference_util.dart';
import 'login_state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();
  final ApiService apiService = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    state.loginEntity = new LoginEntity();
    super.onInit();
  }

  RxBool isObscure = RxBool(false);

  void on_login() async {
    print(
        'email:  ${state.loginEntity.username}, password: ${state.loginEntity.password}');
    // 表单校验通过才会继续执行
    on_username_check(state.loginEntity.username);
    on_password_check(state.loginEntity.username);
    // getHttp();
    //TODO 执行登录方法
    SaTokenEntity? user = await apiService.login(state.loginEntity);
    print(user);
    print("***********");
    print(user);
    // Get.put(user?.tokenValue, tag: "satoken");
    SharedPreferenceUtil.setBool(SharedPreference.isLogin, true);
    SharedPreferenceUtil.setString(
        SharedPreference.saToken, user?.tokenValue ?? "");
    // var dio = new Dio();
    // final putData = jsonEncode({"username":"admin","password":"123123aa","deviceType": "1"});
    // var response = dio.post("http://localhost:8888/user/doLogin",data:{"username":"admin","password":"123123aa","deviceType": "1"});
    // Get.to(AppRoutes.Home);
    Get.to(HomePage());
    // var response = dio.post(
    //   'http://localhost:8888/user/doLogin',
    //   queryParameters: {
    //     "username": "admin",
    //     "password": "123123aa"
    //   },
    //   options: Options(
    //     contentType: Headers.jsonContentType,
    //   ),
    // );
    // print(
    //     'email:  ${response}');
    print(
        'email:  ${state.loginEntity.username}, password: ${state.loginEntity.password}');
  }

  void getHttp() async {
    try {
      var response111 = Dio().get('http://localhost:8888/user/isLogin');
      print('打印结果:$response111');

      var response11 =
          Dio().post('http://localhost:8888/user/isLogin', data: {});
      print('打印结果:$response11');
      var response1 = Dio().post('http://localhost:8888/user/doLogin', data: {
        "username": "admin",
        "password": "123123aa",
        "loginType": 0,
        "deviceType": 0
      });
      print('打印结果:$response1');
      var response = await Dio()
          .get('http://rap2api.taobao.org/app/mock/293606/api/chat/list');
      print('打印结果:$response');
    } catch (e) {
      print('异常信息:$e');
    }
  }

  on_username_check(String? str) {
    if (str!.isEmpty) {
      print("请输入用户名");
    }
  }

  on_password_check(String? str) {
    print("请输入密码 ${str}");
    if (str!.isEmpty) {
      print("请输入密码");
    }
  }

  void on_password_show() {
    isObscure.value = !isObscure.value;
    print("请 ${isObscure}");

    // state.isObscure = !state.isObscure;
    // print("请 ${state.isObscure}");
    update();
  }

  void on_password() {
    // 表单校验通过才会继续执行
    //TODO 执行登录方法
    print("忘记密码");
  }
}
