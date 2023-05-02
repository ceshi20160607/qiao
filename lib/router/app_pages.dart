import 'package:get/get.dart';

import '../modules/login/Index/Index_view.dart';
import '../modules/login/home/home_binding.dart';
import '../modules/login/home/home_view.dart';
import '../modules/login/login/login_binding.dart';
import '../modules/login/login/login_view.dart';

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
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
