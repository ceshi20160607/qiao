import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NavWidget extends StatelessWidget {
  final String titleStr;
  Widget? rightIcon;
  Widget? middleIcon;
  NavWidget({Key? key, required this.titleStr, this.rightIcon, this.middleIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).padding.top + kToolbarHeight,
        padding: EdgeInsets.only(
            top: (MediaQuery.of(context).padding.top + kToolbarHeight) / 2),
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
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
            ),
            const Spacer(),
            Text(
              titleStr,
              style: TextStyle(
                  fontSize: 40.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 6.w),
            middleIcon ?? Container(),
            const Spacer(),
            rightIcon ??
                IconButton(
                  onPressed: () {},
                  icon: Container(),
                  iconSize: 28,
                  padding: const EdgeInsets.all(0),
                ),
          ],
        ));
  }
}
