import 'package:get/get.dart';
import 'package:qiao/modules/login/Index/index_logic.dart';
import 'package:qiao/modules/login/car/car_logic.dart';
import 'package:qiao/service/api_service.dart';

import '../home/home_logic.dart';
import 'login_logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarLogic());
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => IndexLogic());
    Get.lazyPut(() => LoginLogic());
    Get.lazyPut(() => ApiService());
  }
}
