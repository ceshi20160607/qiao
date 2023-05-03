import 'package:get/get.dart';
import 'package:qiao/service/api_service.dart';

import '../home/home_logic.dart';
import 'login_logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => LoginLogic());
    Get.lazyPut(() => ApiService());
  }
}
