import 'package:get/get.dart';

import '../car/car_logic.dart';
import '../note/note_logic.dart';
import '../other/other_logic.dart';
import 'home_logic.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarLogic());
    Get.lazyPut(() => NoteLogic());
    Get.lazyPut(() => OtherLogic());
    Get.lazyPut(() => HomeLogic());
  }
}
