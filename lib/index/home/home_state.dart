import 'package:flutter/material.dart';
import 'package:qiao/index/note/note_view.dart';
import 'package:qiao/index/other/other_view.dart';

import '../car/car_view.dart';

class HomeState {
  ///当前下标
  late int currentIndex;

  ///主页界面子页面
  late List<Widget> mainIndexStackPages;

  HomeState() {
    ///Initialize variables
    ///Initialize variables
    currentIndex = 0;
    mainIndexStackPages = [
      CarPage(),
      NotePage(),
      OtherPage(),
    ];
  }
}
