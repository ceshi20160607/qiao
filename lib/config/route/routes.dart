import 'package:get/get.dart';
import 'package:qiao/index/car/car_binding.dart';
import 'package:qiao/index/car/car_view.dart';
import 'package:qiao/index/carinfo/carinfo_binding.dart';
import 'package:qiao/index/carinfo/carinfo_view.dart';
import 'package:qiao/index/home/home_binding.dart';
import 'package:qiao/index/home/home_view.dart';
import 'package:qiao/index/login/login_binding.dart';
import 'package:qiao/index/note/note_binding.dart';
import 'package:qiao/index/note/note_view.dart';
import 'package:qiao/index/other/other_binding.dart';
import 'package:qiao/index/other/other_view.dart';

import '../../index/index/index_binding.dart';
import '../../index/index/index_view.dart';
import '../../index/login/login_view.dart';

class AppRoutes {
  ///root page
  static String main = "/";
  static String login = "/login";
  static String index = "/index";
  static String home = "/home";
  static String car = "/car";
  static String note = "/note";
  static String other = "/other";

  static String carinfo = "/carinfo";

  ///pages map
  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: index, page: () => IndexPage(), binding: IndexBinding()),
    GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: car, page: () => CarPage(), binding: CarBinding()),
    GetPage(
        name: carinfo, page: () => CarinfoPage(), binding: CarinfoBinding()),
    GetPage(name: note, page: () => NotePage(), binding: NoteBinding()),
    GetPage(name: other, page: () => OtherPage(), binding: OtherBinding()),
  ];
}
