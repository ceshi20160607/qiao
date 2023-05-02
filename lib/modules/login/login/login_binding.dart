import 'package:get/get.dart';
import 'package:qiao/modules/login/home/home_logic.dart';
import 'package:qiao/service/api_service.dart';

import 'login_logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogic());
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => HomeLogic());
  }
}
