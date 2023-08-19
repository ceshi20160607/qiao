import 'package:get/get.dart';
import 'package:qiao/config/route/routes.dart';
import 'package:qiao/models/index.dart';

import '../../config/i18n/key_str.dart';
import '../../config/net/http.dart';
import '../../config/util/shared_preferences.dart';
import '../../config/widget/loading_widget.dart';

class LoginLogic extends GetxController {
  final Loginuser state = Loginuser();

  on_login() {
    /// 展示loading
    Loading.show();

    Http().client.doLogin(state.toJson()).then((value) {
      Loading.dissmiss();
      // netState = NetState.dataSussessState;
      // infoWorkModel = value.data!;
      // SharedPreferencesUtil.sharedPreferences.set
      User user = value.data!;

      ///设置缓存token
      SharedPreferencesUtil.sharedPreferences.setBool(KS.isLogin, true);
      SharedPreferencesUtil.sharedPreferences
          .setString(KS.saToken, user.tokenValue);
      //跳转页面
      Get.offAllNamed(AppRoutes.home);
      //更新
      update();
    }).catchError((onError) {
      /// 结束loading
      Loading.dissmiss();
      print(onError);
      // netState = NetState.errorshowRelesh;
      update();
    });
  }

  on_password() {}

  on_password_show() {}
}
