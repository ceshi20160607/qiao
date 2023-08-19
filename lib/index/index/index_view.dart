import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index_logic.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<IndexLogic>();
    final state = Get.find<IndexLogic>().state;

    return Container();
  }
}
