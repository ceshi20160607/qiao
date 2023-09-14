import 'package:get/get.dart';
import 'package:qiao/around/login/login_binding.dart';
import 'package:qiao/around/login/login_view.dart';
import 'package:qiao/around/navbar/navbar_binding.dart';
import 'package:qiao/around/navbar/navbar_view.dart';
import 'package:qiao/master/car/car_binding.dart';
import 'package:qiao/master/car/car_view.dart';
import 'package:qiao/master/caradd/caradd_binding.dart';
import 'package:qiao/master/caradd/caradd_view.dart';
import 'package:qiao/master/carinfo/carinfo_binding.dart';
import 'package:qiao/master/carinfo/carinfo_view.dart';
import 'package:qiao/master/note/note_binding.dart';
import 'package:qiao/master/note/note_view.dart';
import 'package:qiao/master/other/other_binding.dart';
import 'package:qiao/master/other/other_view.dart';

import '../enum/module_type.dart';

class AppRoutes {
  ///pages map
  static List<GetPage> routes = [
    GetPage(
        name: ModuleTypeEnum.MAIN.routepath,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: ModuleTypeEnum.NAVBAR.routepath,
        page: () => NavbarPage(),
        binding: NavbarBinding()),
    // GetPage(name: index, page: () => IndexPage(), binding: IndexBinding()),
    // GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),

    GetPage(
        name: ModuleTypeEnum.CAR.routepath,
        page: () => CarPage(),
        binding: CarBinding()),
    GetPage(
        name: ModuleTypeEnum.CARADD.routepath,
        page: () => CaraddPage(),
        binding: CaraddBinding()),
    GetPage(
        name: ModuleTypeEnum.CARINFO.routepath,
        page: () => CarinfoPage(),
        binding: CarinfoBinding()),

    GetPage(
        name: ModuleTypeEnum.NOTE.routepath,
        page: () => NotePage(),
        binding: NoteBinding()),
    GetPage(
        name: ModuleTypeEnum.OTHER.routepath,
        page: () => OtherPage(),
        binding: OtherBinding()),
  ];
}
