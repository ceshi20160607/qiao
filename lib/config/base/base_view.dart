import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

abstract class BaseView<T> extends GetView<T> {
  BaseView({Key? key}) : super(key: key);

  /// 状态栏高度
  double statusBarH = ScreenUtil().statusBarHeight;

  /// 导航栏高度
  double navBarH = AppBar().preferredSize.height;

  /// 安全区域高度
  double safeBarH = ScreenUtil().bottomBarHeight;

  /// 设置背景颜色
  Color? contentColor;

  /// 设置标题文字
  String? navTitle;

  /// 设置导航栏颜色
  Color? navColor;

  /// 设置左边按钮
  Widget? leftButton;

  /// 设置左边宽度
  double? leftWidth;

  /// 设置右边按钮数组
  List<Widget>? rightActionList;

  /// 是否隐藏导航栏
  bool? isTitleCenter;

  /// 是否隐藏导航栏
  bool? isHiddenNav;

  /// 是否隐藏左侧导航栏
  bool? isHiddenLeftNav;

  /// 是否隐藏右侧导航栏
  bool? isHiddenRightNav;

  /// 设置主主视图内容(子类不实现会报错)
  Widget buildContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: contentColor ?? Colors.white,
        appBar: isHiddenNav == true
            ? null
            : AppBar(
                backgroundColor: navColor ?? Colors.white70,
                title: Text(
                  navTitle ?? '',
                  textAlign:
                      isTitleCenter == true ? TextAlign.center : TextAlign.left,
                ),
                leading: isHiddenLeftNav == true
                    ? const SizedBox()
                    : (leftButton ?? left()),
                leadingWidth: leftWidth ?? 0,
                actions:
                    isHiddenRightNav == true ? [] : (rightActionList ?? []),
              ),
        body: buildContent());
  }

  /// 左边按钮
  Widget left() {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Image.asset(
        'assets/images/back_black.png',
        width: 28,
        height: 28,
      ),
      iconSize: 28,
      padding: const EdgeInsets.all(0),
    );
  }
}
