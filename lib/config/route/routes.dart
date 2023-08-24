import 'package:get/get.dart';
import 'package:qiao/around/login/login_binding.dart';
import 'package:qiao/around/login/login_view.dart';
import 'package:qiao/around/navbar/navbar_binding.dart';
import 'package:qiao/around/navbar/navbar_view.dart';
import 'package:qiao/master/car/car_binding.dart';
import 'package:qiao/master/car/car_view.dart';
import 'package:qiao/master/carinfo/carinfo_binding.dart';
import 'package:qiao/master/carinfo/carinfo_view.dart';
import 'package:qiao/master/note/note_binding.dart';
import 'package:qiao/master/note/note_view.dart';
import 'package:qiao/master/other/other_binding.dart';
import 'package:qiao/master/other/other_view.dart';

class AppRoutes {
  ///root page
  static String main = "/";
  static String login = "/login";
  static String navbar = "/navbar";

  // static String index = "/index";
  // static String home = "/home";
  static String car = "/car";
  static String note = "/note";
  static String other = "/other";

  static String carinfo = "/carinfo";

  ///pages map
  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: navbar, page: () => NavbarPage(), binding: NavbarBinding()),
    // GetPage(name: index, page: () => IndexPage(), binding: IndexBinding()),
    // GetPage(name: home, page: () => HomePage(), binding: HomeBinding()),

    GetPage(name: car, page: () => CarPage(), binding: CarBinding()),
    GetPage(
        name: carinfo, page: () => CarinfoPage(), binding: CarinfoBinding()),
    GetPage(name: note, page: () => NotePage(), binding: NoteBinding()),
    GetPage(name: other, page: () => OtherPage(), binding: OtherBinding()),
  ];
}
