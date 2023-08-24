import 'package:get/get.dart';
import 'package:qiao/master/car/car_logic.dart';
import 'package:qiao/master/note/note_logic.dart';
import 'package:qiao/master/other/other_logic.dart';

import 'navbar_logic.dart';

class NavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavbarLogic());
    Get.lazyPut(() => CarLogic());
    Get.lazyPut(() => NoteLogic());
    Get.lazyPut(() => OtherLogic());
  }
}
