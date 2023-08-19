import 'package:get/get.dart';
import 'package:qiao/modules/login/Index/index_binding.dart';
import 'package:qiao/modules/login/car/car_binding.dart';
import 'package:qiao/modules/login/car/car_view.dart';

import '../modules/login/home/home_binding.dart';
import '../modules/login/home/home_view.dart';
import '../modules/login/index/index_view.dart';
import '../modules/login/login/login_binding.dart';
import '../modules/login/login/login_view.dart';

part 'app_routes.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.Index,
      page: () => IndexPage(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.NoteCar,
      page: () => CarPage(),
      binding: CarBinding(),
    ),
  ];
}
