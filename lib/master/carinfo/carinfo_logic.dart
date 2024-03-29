import 'package:get/get.dart';
import 'package:qiao/config/util/log_util.dart';

import '../../config/base/base_common_controller.dart';
import '../../config/base/base_controller.dart';
import '../../config/net/http.dart';
import '../../config/widget/loading_widget.dart';
import '../../models/fieldvo.dart';

class CarinfoLogic extends BaseCommonController {
  List<Fieldvo> fieldList = [];

  @override
  void initData() {
    // if (Get.arguments == null) {
    //   Get.back();
    // } else {
    getnetworkdata(configNetWorkParmas());
    // }
  }

  @override
  void getnetworkdata(Map<String, dynamic> info) {
    super.getnetworkdata(info);

    /// 展示loading
    Loading.show();
    logD("info--->$info");

    // Http().client.queryCarById(info['id']).then((value) {
    //   Loading.dissmiss();
    //   netState = NetState.dataSussessState;
    //   car = value.data!;
    //
    //   logD("info--->$netState");
    //   logD("info--->$car");
    //   update();
    // }).catchError((onError) {
    //   /// 结束loading
    //   Loading.dissmiss();
    //   print(onError);
    //   netState = NetState.errorshowRelesh;
    //   update();
    // });
    Http().client.queryInformation(info['id']).then((value) {
      Loading.dissmiss();
      netState = NetState.dataSussessState;
      fieldList = value.data!;

      logD("info--->$netState");
      logD("info--->$fieldList");
      update();
    }).catchError((onError) {
      /// 结束loading
      Loading.dissmiss();
      print(onError);
      netState = NetState.errorshowRelesh;
      update();
    });
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    return {"id": Get.arguments['id']};
  }

  // /// 喜欢事件
  // void likeMethond(InfoWorkModel model) {
  //   Http().client.likeThumbsUpOrDown({
  //     'contentId': model.entityId,
  //     'contentType': '5',
  //     'token': StringConfig.token
  //   }).then((value) {
  //     Result model = value;
  //   }).catchError((onError) {});
  // }
}
