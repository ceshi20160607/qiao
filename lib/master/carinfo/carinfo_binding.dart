import 'package:get/get.dart';

import 'carinfo_logic.dart';

class CarinfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarinfoLogic());
  }
}
