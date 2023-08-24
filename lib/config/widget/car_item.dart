import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qiao/config/util/log_util.dart';

import '../../models/car.dart';
import '../env/themConfig.dart';

class InfoWidget extends StatelessWidget {
  final Car model;
  final int index;
  const InfoWidget({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    logD("InfoWidget--->:$model");
    return Container(
      width: 1.sw,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // threeImageWidget(),
          SizedBox(
            height: 10.h,
          ),
          titleWidget(),
          SizedBox(
            height: 10.h,
          ),
          // bottowWidget(login),
          SizedBox(
            height: 14.h,
          ),
          lineWidget()
        ],
      ),
    );
  }

  /// 三张图片
  // Widget threeImageWidget() {
  //   List<Widget> rowWidget = [];
  //   for (int i = 0; i < model.newsPics.length; i++) {
  //     rowWidget.add(
  //       ClipRRect(
  //         borderRadius: BorderRadius.circular(5.h),
  //         child: AppNetImage(
  //           imageUrl: model.newsPics[i],
  //           width: (1.sw - 40.w) / 3,
  //           height: (1.sw - 40.w) / 3 / 3 * 2,
  //         ),
  //       ),
  //     );
  //     if (i < 2) {
  //       rowWidget.add(
  //         SizedBox(
  //           width: 10.w,
  //         ),
  //       );
  //     }
  //   }
  //
  //   return Row(
  //     children: rowWidget,
  //   );
  // }

  /// 文字描述
  Widget titleWidget() {
    return Text(
      model.carType == 0 ? "日程" : "加油",
      style: Get.isDarkMode
          ? darkTheme.textTheme.bodyMedium
          : lightTheme.textTheme.bodyMedium,
    );
  }

  // /// 底部viw
  // Widget bottowWidget(CarLogic controller) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [authorWidget(), toolWidget(controller)],
  //   );
  // }

  /// 作者
  // Widget authorWidget() {
  //   return Row(
  //     children: [
  //       ClipRRect(
  //         borderRadius: BorderRadius.circular(10.w),
  //         child: AppNetImage(
  //           imageUrl: model.mcnIcon,
  //           width: 20.w,
  //           height: 20.w,
  //         ),
  //       ),
  //       SizedBox(
  //         width: 5.w,
  //       ),
  //       Text(
  //         model.mcnRealName,
  //         style: Get.isDarkMode
  //             ? darkTheme.textTheme.bodyLarge
  //             : lightTheme.textTheme.bodyLarge,
  //       ),
  //       SizedBox(
  //         width: 5.w,
  //       ),
  //       Text(
  //         model.createTimeStr,
  //         style: Get.isDarkMode
  //             ? darkTheme.textTheme.bodySmall
  //             : lightTheme.textTheme.bodySmall,
  //       ),
  //     ],
  //   );
  // }

  // /// 工具栏
  // Widget toolWidget(HomeController controller) {
  //   return Row(
  //     children: [
  //       Row(
  //         children: [
  //           Image.asset(
  //             "assets/images/pageviewIcon.png",
  //             fit: BoxFit.fitWidth,
  //             width: 20.w,
  //             height: 20.w,
  //           ),
  //           SizedBox(
  //             width: 5.w,
  //           ),
  //           Text(
  //             model.uVContentStr,
  //             style: Get.isDarkMode
  //                 ? darkTheme.textTheme.bodyLarge
  //                 : lightTheme.textTheme.bodyLarge,
  //           ),
  //         ],
  //       ),
  //       SizedBox(
  //         width: 10.w,
  //       ),
  //       GestureDetector(
  //         onTap: () => controller.zanMethond(index),
  //         child: Row(
  //           children: [
  //             Image.asset(
  //               "assets/images/zan_nonal.png",
  //               fit: BoxFit.fitWidth,
  //               width: 16.w,
  //               height: 16.w,
  //               color: model.isThumbs == 1 ? Colors.red : Colors.blueGrey,
  //             ),
  //             SizedBox(
  //               width: 5.w,
  //             ),
  //             Text(
  //               '点赞',
  //               style: Get.isDarkMode
  //                   ? darkTheme.textTheme.bodyLarge
  //                   : lightTheme.textTheme.bodyLarge,
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  /// 线
  Widget lineWidget() {
    return Container(
      height: 2.h,
      width: 1.sw - 20.w,
      color: Get.isDarkMode ? darkTheme.dividerColor : lightTheme.dividerColor,
    );
  }
}
