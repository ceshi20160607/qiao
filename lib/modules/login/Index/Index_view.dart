import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiao/modules/login/login/login_view.dart';

import 'Index_controller.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Obx(() => Scaffold(
    //       body: LoginUserPage(),
    //     ));
    return Scaffold(
      body: LoginPage(),
    );
  }
}
