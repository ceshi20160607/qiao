import 'package:get/get.dart';

import '../../../core/share/SharedPreference.dart';
import '../../../core/share/shared_preference_util.dart';
import 'home_state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  ///自增
  void increase() {
    state.aaaa = SharedPreferenceUtil.getString(SharedPreference.saToken) ?? "";
    update();
  }
}
