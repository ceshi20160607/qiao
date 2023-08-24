import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiao/config/base/base_controller.dart';
import 'package:qiao/master/car/car_view.dart';
import 'package:qiao/master/note/note_view.dart';
import 'package:qiao/master/other/other_view.dart';

class NavbarLogic extends BaseController {
  List<Widget> tabPageList = [
    CarPage(),
    NotePage(),
    OtherPage(),
  ];
  var tabIndex = 0.obs;

  @override
  void initData() {}
}
