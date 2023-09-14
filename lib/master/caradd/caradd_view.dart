import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/base/base_common_view.dart';
import '../../config/widget/car_info_item.dart';
import 'caradd_logic.dart';

class CaraddPage extends BaseCommonView<CaraddLogic> {
  @override
  Widget buildContent() {
    // TODO: implement buildContent
    return GetBuilder<CaraddLogic>(
        builder: (_) => creatCommonView(
              controller,
              InfoItemWidget(fieldList: []),
            ));
  }

  ///  设置右边按钮
  @override
  List<Widget>? get rightActionList => [
        GestureDetector(
          onTap: () {
            controller.save();
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
