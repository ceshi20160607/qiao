import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiao/config/const/key_const.dart';
import 'package:qiao/config/util/CommonUtil.dart';

import 'navbar_logic.dart';

class NavbarPage extends GetView<NavbarLogic> {
  NavbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarLogic>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: controller.tabIndex.value,
          children: controller.tabPageList,
        ),
        bottomNavigationBar: _buildBottomTab(),
      ),
    );
  }

  //底部tab
  Widget _buildBottomTab() {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      items: [
        CommonUtil.buildBottomNavigationBarItem(KS.car, "car"),
        CommonUtil.buildBottomNavigationBarItem(KS.note, "note"),
        CommonUtil.buildBottomNavigationBarItem(KS.other, "other"),
      ],
      currentIndex: controller.tabIndex.value,
      onTap: (int index) async {
        if (controller.tabIndex.value == index) {
          return;
        }
        controller.tabIndex.value = index;
        controller.update();
      },
    );
  }
}
