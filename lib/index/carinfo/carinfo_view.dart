import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/base/base_common_view.dart';
import 'carinfo_logic.dart';

class CarinfoPage extends BaseCommonView<CarinfoLogic> {
  CarinfoPage({Key? key}) : super(key: key);

  /// 隐藏导航栏
  // ///
  @override
  bool? get isHiddenNav => true;

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return Builder(
        builder: (_) => creatCommonView(
            controller,
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().statusBarHeight + kToolbarHeight,
                      bottom: ScreenUtil().bottomBarHeight + 60.h),
                  child: Text(
                    controller.car!.id,
                  ),
                )
              ],
            )));
  }
}
