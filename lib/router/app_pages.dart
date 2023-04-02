import 'package:get/get.dart';

import '../modules/login/Index/Index_view.dart';
import '../modules/login/login_user/binding.dart';
import '../modules/login/login_user/view.dart';
part 'app_routes.dart';

class AppPages {

  static final routes = [
    GetPage(
      name: AppRoutes.Index,
      page: () => IndexPage(),
    ),
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginUserPage(),
      binding: LoginUserBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.Home,
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
  ];
}