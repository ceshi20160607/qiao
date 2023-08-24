import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'other_logic.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<OtherLogic>();
    final state = Get.find<OtherLogic>().state;

    return Text("other");
  }
}
