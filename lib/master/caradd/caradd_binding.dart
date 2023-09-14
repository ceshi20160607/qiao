import 'package:get/get.dart';

import 'caradd_logic.dart';

class CaraddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaraddLogic());
  }
}
