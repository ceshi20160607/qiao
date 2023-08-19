import 'package:get/get.dart';

import '../../../service/api_service.dart';
import 'car_logic.dart';

class CarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarLogic());
    Get.lazyPut(() => ApiService());
  }
}
