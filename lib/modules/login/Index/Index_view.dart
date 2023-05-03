import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Index_controller.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Obx(() => Scaffold(
    //       body: LoginUserPage(),
    //     ));
    return Scaffold(
      body: Text('欢迎！'),
    );
  }
}
