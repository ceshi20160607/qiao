import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qiao/config/enum/field_type.dart';

import '../../models/fieldvo.dart';
import '../env/themConfig.dart';

class InfoItemWidget extends StatelessWidget {
  final List<Fieldvo> fieldList;
  const InfoItemWidget({super.key, required this.fieldList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.h,
          ),
          itemWidget(),
          SizedBox(
            height: 10.h,
          ),
          lineWidget(),
        ],
      ),
    );
  }

  /// 三张图片
  Widget itemWidget() {
    List<Widget> rowWidget = [];
    fieldList.forEach((field) {
      switch (FieldTypeEnum.getType(field.type)) {
        case FieldTypeEnum.TEXT:
          rowWidget.add(Text(
            field.valueSingle,
            //文本的对齐方式；可以选择左对齐、右对齐还是居中。
            textAlign: TextAlign.center,
            //文本方向
            textDirection: TextDirection.ltr,
            //是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理
            softWrap: false,
            //指定文本显示的最大行数，默认情况下，文本是自动折行的
            maxLines: 1,
            //如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断，
            //TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
            overflow: TextOverflow.ellipsis,
            //代表文本相对于当前字体大小的缩放因子，相对于去设置文本的样式style属性
            textScaleFactor: 1.5,
            style: TextStyle(
              //文字的颜色
              color: Colors.blue,
              //该属性和Text的textScaleFactor都用于控制字体大小
              //fontSize可以精确指定字体大小，而textScaleFactor只能通过缩放比例来控制。
              fontSize: 18.0,
              //该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height
              height: 1.2,
              fontFamily: "Courier",
              background: new Paint()..color = Colors.yellow,
              //线的颜色
              decorationColor: const Color(0xffffffff),
              //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
              decoration: TextDecoration.underline,
              //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
              decorationStyle: TextDecorationStyle.solid,
              //单词间隙(负值可以让单词更紧凑)
              wordSpacing: 0.0,
              //字母间隙(负值可以让字母更紧凑)
              letterSpacing: 0.0,
              //文字样式，斜体和正常
              fontStyle: FontStyle.italic,
              //字体粗细  粗体和正常
              fontWeight: FontWeight.w900,
            ),
          ));
          break;
        case FieldTypeEnum.SELECT:
          rowWidget.add(Radio(value: 1, groupValue: 1, onChanged: (v) {}));
          rowWidget.add(Radio(value: 2, groupValue: 1, onChanged: (v) {}));
          break;
        case FieldTypeEnum.TEXTAREA:
          rowWidget.add(new Text.rich(new TextSpan(text: field.valueSingle)));
      }
    });

    //返回数据
    return Row(
      children: rowWidget,
    );
  }

  // /// 文字描述
  // Widget titleWidget() {
  //   return Text(
  //     model.carType == 0 ? "日程" : "加油",
  //     style: Get.isDarkMode
  //         ? darkTheme.textTheme.bodyMedium
  //         : lightTheme.textTheme.bodyMedium,
  //   );
  // }

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
