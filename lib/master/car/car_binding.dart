import 'package:get/get.dart';

import 'car_logic.dart';

class CarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarLogic());
  }
}
