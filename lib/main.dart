import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qiao/router/app_pages.dart';

import 'core/share/shared_preference_util.dart';

void main() {
  //持久化存储初始化
  SharedPreferenceUtil.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: LoginBinding(),
      initialRoute: AppRoutes.Login,
      getPages: AppPages.routes,
      // home: IndexPage(),
    );
    // return GetMaterialApp(
    //   title: 'Flutter Qiao',
    //   theme: ThemeData(
    //     // This is the theme of your application.
    //     //
    //     // Try running your application with "flutter run". You'll see the
    //     // application has a blue toolbar. Then, without quitting the app, try
    //     // changing the primarySwatch below to Colors.green and then invoke
    //     // "hot reload" (press "r" in the console where you ran "flutter run",
    //     // or simply save your changes to "hot reload" in a Flutter IDE).
    //     // Notice that the counter didn't reset back to zero; the application
    //     // is not restarted.
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: LoginUserPage(),
    // );
  }
}
