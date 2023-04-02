import 'package:get/get.dart';

import 'logic.dart';

class LoginUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginUserLogic());
  }
}
