import 'package:flutter/material.dart';
import 'package:qiao/modules/login/car/car_view.dart';
import 'package:qiao/modules/login/home/home_view.dart';

class IndexState {
  ///当前下标
  late int currentIndex;

  ///主页界面子页面
  late List<Widget> mainIndexStackPages;
  IndexState() {
    ///Initialize variables
    currentIndex = 0;
    mainIndexStackPages = [
      HomePage(),
      HomePage(),
      HomePage(),
      CarPage(),
      HomePage(),
    ];
  }
}
