import 'package:get/get.dart';
import 'package:qiao/modules/login/login/login_binding.dart';
import 'package:qiao/modules/login/login/login_view.dart';

import '../modules/login/Index/Index_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.Index,
      page: () => IndexPage(),
    ),
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.Home,
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
  ];
}
