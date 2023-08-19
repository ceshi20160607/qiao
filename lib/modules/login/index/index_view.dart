import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/i18n/key_str.dart';
import '../../../core/ui/app_theme.dart';
import '../../../core/utils/CommonUtil.dart';
import 'index_logic.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final logic = Get.find<IndexLogic>();
  final state = Get.find<IndexLogic>().state;

  @override
  Widget build(BuildContext context) {
    return buildBg();
  }

  Widget buildBg() {
    return SafeArea(
        child: Scaffold(
      body: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        ///选中时字体大小
        selectedFontSize: 12,

        ///未选中时字体大小
        unselectedFontSize: 12,

        ///选中时字体颜色
        selectedItemColor: AppTheme.norMainThemeColors,

        ///显示label标签，而不是隐藏label
        type: BottomNavigationBarType.fixed,

        ///当前显示的页面
        currentIndex: state.currentIndex,
        items: [
          CommonUtil.buildBottomNavigationBarItem(KS.home, "home"),
          CommonUtil.buildBottomNavigationBarItem(KS.note, "note"),
          CommonUtil.buildBottomNavigationBarItem(KS.examine, "examine"),
          CommonUtil.buildBottomNavigationBarItem(KS.car, "car"),
          CommonUtil.buildBottomNavigationBarItem(KS.other, "other"),
        ],
        onTap: (index) {
          logic.updateCurrentIndex(index);
        },
      ),
    ));
  }
}
