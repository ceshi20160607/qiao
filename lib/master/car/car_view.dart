import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qiao/config/base/base_list_view.dart';

import '../../config/widget/car_item.dart';
import 'car_logic.dart';

class CarPage extends BaseListView<CarLogic> {
  CarPage({Key? key}) : super(key: key);

  /// 设置导航栏文字
  @override
  String? get navTitle => '车';

  /// 设置左边按钮宽度
  @override
  bool? get isTitleCenter => true;

  /// 设置左边按钮宽度
  @override
  bool? get isHiddenLeftNav => true;

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return GetBuilder<CarLogic>(builder: (_) {
      return creatRefresherListView(
          controller,
          ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: controller.carList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: InfoWidget(
                    model: controller.carList[index],
                    index: index,
                  ),
                  onTap: () {
                    controller.jumpDetail(controller.carList[index].id);
                  },
                );
              }));
    });
  }

  ///  设置右边按钮
  @override
  List<Widget>? get rightActionList => [
        GestureDetector(
          onTap: () {
            controller.jumpAdd();
          },
          child: Icon(
            Icons.security,
            color: Colors.black87,
            size: 20.w,
          ),
        ),
        SizedBox(
          width: 20.w,
        )
      ];
}
