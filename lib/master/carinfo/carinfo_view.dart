import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/base/base_common_view.dart';
import 'carinfo_logic.dart';

class CarinfoPage extends BaseCommonView<CarinfoLogic> {
  CarinfoPage({Key? key}) : super(key: key);

  // /// 隐藏导航栏
  // // ///
  // @override
  // bool? get isHiddenNav => true;
  /// 设置导航栏文字
  @override
  String? get navTitle => '车详情';

  /// 设置左边按钮宽度
  @override
  double? get leftWidth => 50;

  /// 设置左边按钮宽度
  @override
  bool? get isTitleCenter => false;

  /// 设置左边按钮宽度
  @override
  bool? get isHiddenLeftNav => false;

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return Builder(
        builder: (_) => creatCommonView(
            controller,
            Stack(
              children: [
                // Text(controller.car.id),
                // Padding(
                //   padding: EdgeInsets.only(
                //       top: ScreenUtil().statusBarHeight + kToolbarHeight,
                //       bottom: ScreenUtil().bottomBarHeight + 60.h),
                //   child: Text(
                //     controller.car!.id,
                //   ),
                // )

                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().statusBarHeight + kToolbarHeight,
                      bottom: ScreenUtil().bottomBarHeight + 60.h),
                  child: Text(
                    "App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境App切换环境,杀死App生效",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            )));
  }
}
