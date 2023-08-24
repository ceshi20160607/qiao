import 'package:flutter/material.dart';
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
  bool? get isHiddenLeftNav => false;

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
                    controller.pushDetail(controller.carList[index].id);
                  },
                );
              }));
    });
  }
}
