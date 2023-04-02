import 'package:get/get.dart';

import 'state.dart';

class LoginUserLogic extends GetxController {
  final LoginUserState state = LoginUserState();

  void on_login(){
      // 表单校验通过才会继续执行
      //TODO 执行登录方法
      print('email: ${state.loginEntity.username}, password: ${state.loginEntity.password}');
  }

  void on_password(){
    // 表单校验通过才会继续执行
    //TODO 执行登录方法
    print("忘记密码");
  }

}
