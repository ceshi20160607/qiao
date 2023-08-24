import 'package:get/get.dart';

import 'other_logic.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtherLogic());
  }
}
