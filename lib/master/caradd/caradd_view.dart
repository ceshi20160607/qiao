import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/base/base_common_view.dart';
import '../../config/widget/car_info_item.dart';
import 'caradd_logic.dart';

class CaraddPage extends BaseCommonView<CaraddLogic> {
  /// 设置导航栏文字
  @override
  String? get navTitle => '新增';

  /// 设置左边按钮宽度
  @override
  bool? get isTitleCenter => false;

  /// 设置左边按钮宽度
  @override
  bool? get isHiddenLeftNav => false;

  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return GetBuilder<CaraddLogic>(
        builder: (_) => creatCommonView(
            controller,
            ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: controller.fieldList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: InfoItemWidget(
                      model: controller.fieldList[index],
                      index: index,
                    ),
                    // onTap: () {
                    //   controller.jumpDetail(controller.carList[index].id);
                    // },
                  );
                })));
    //   InfoItemWidget(
    //     fieldList: [],
    //     inputFlag: true,
    //   ),
    // ));
  }

  ///  设置右边按钮
  @override
  List<Widget>? get rightActionList => [
        GestureDetector(
          onTap: () {
            controller.save();
          },
          child: Icon(
            Icons.add,
            color: Colors.white70,
            size: 20.w,
          ),
        ),
        SizedBox(
          width: 20.w,
        )
      ];
}
