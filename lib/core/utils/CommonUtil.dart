import 'package:flutter/material.dart';

class CommonUtil {
  /// swithch 下的 图标基础属性
  static BottomNavigationBarItem buildBottomNavigationBarItem(
      String title, String iconName) {
    return BottomNavigationBarItem(
      label: title,
      icon: Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Image.asset(
          "assets/image/icon/${iconName}_custom.png",
          width: 18,
          height: 18,
          gaplessPlayback:
              true, //gaplessPlayback: 原图片保持不变，直到图片加载完成时替换图片，这样就不会出现闪烁
        ),
      ),
      activeIcon: Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Image.asset(
          "assets/image/icon/${iconName}_selected.png",
          width: 18,
          height: 18,
          gaplessPlayback: true,
        ),
      ),
    );
  }

  ///将Color转为MaterialColor
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
