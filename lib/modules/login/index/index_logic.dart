import 'package:get/get.dart';

import 'index_state.dart';

class IndexLogic extends GetxController {
  final IndexState state = IndexState();

  ///更新当前下标
  void updateCurrentIndex(int index) {
    state.currentIndex = index;
    update();
  }
}
