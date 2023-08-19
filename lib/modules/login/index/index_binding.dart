import 'package:get/get.dart';
import 'package:qiao/modules/login/car/car_logic.dart';
import 'package:qiao/modules/login/home/home_logic.dart';

import 'index_logic.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeLogic());
    Get.lazyPut(() => CarLogic());
    Get.lazyPut(() => IndexLogic());
  }
}
