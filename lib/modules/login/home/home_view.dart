import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.find<HomeLogic>();
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Get.find(tag: "satoken")),
    );
  }
}
