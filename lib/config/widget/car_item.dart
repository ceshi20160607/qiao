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
      // margin: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 10.h),
      width: 1.sw,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8.h,
          ),
          rowWidget(),
          SizedBox(
            height: 8.h,
          ),
          lineWidget()
        ],
      ),
    );
  }

  /// 文字描述
  Widget rowWidget() {
    DateTime ctime = DateTime.parse(model.createTime);
    return Row(
      children: [
        SizedBox(
          width: 50.w,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.greenAccent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ctime.year.toString(),
                      // style: TextStyle(backgroundColor: Colors.red),
                    ),
                    Text(
                      ctime.month.toString() + "/" + ctime.day.toString(),
                      // style: TextStyle(backgroundColor: Colors.blue),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50.w,
          child: Column(
            children: [
              Text(
                model.carType == 0 ? "日程" : "加油",
              )
            ],
          ),
        ),
        contentWidget(),
      ],
    );
  }

  /// 返回后面内容
  Widget contentWidget() {
    if (model.carType == 0) {
      return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "油量：" +
                  (model.beforeOilNumber ?? "").toString() +
                  "-" +
                  (model.afterOilNumber ?? "").toString(),
              style: TextStyle(backgroundColor: Colors.blue),
            ),
            Text(
              "公里：" +
                  (model.startKiloNumber ?? "").toString() +
                  "-" +
                  (model.endKiloNumber ?? "").toString(),
              style: TextStyle(backgroundColor: Colors.orange),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("价格：" + model.oilPrice.toString()),
            Text("数量：" + model.oilLiterNumber.toString()),
            Text("总计：" + model.oilMoney.toString()),
          ],
        ),
      );
    }
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
