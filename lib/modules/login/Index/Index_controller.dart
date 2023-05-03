import 'package:get/get.dart';
import 'package:qiao/modules/login/login/login_view.dart';

class IndexController extends GetxController {
  // 是否展示欢迎页
  var isloadWelcomePage = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    print("1111");
    startCountdownTimer();
    print("1111");
  }

  @override
  void onClose() {
    print("object");
  }

  // 展示欢迎页，倒计时1.5秒之后进入应用
  Future startCountdownTimer() async {
    await Future.delayed(Duration(milliseconds: 1500), () {
      isloadWelcomePage.value = false;
    });
    print("1111");
    Get.to(LoginPage());
  }
}
