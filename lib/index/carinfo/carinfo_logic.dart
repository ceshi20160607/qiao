import 'package:get/get.dart';

import '../../config/base/base_common_controller.dart';
import '../../config/base/base_controller.dart';
import '../../config/net/http.dart';
import '../../config/widget/loading_widget.dart';
import '../../models/car.dart';

class CarinfoLogic extends BaseCommonController {
  Car car = Car();

  @override
  void initData() {
    getnetworkdata(configNetWorkParmas());
  }

  @override
  void getnetworkdata(Map<String, dynamic> info) {
    super.getnetworkdata(info);

    /// 展示loading
    Loading.show();

    Http().client.queryCarById(info['id']).then((value) {
      Loading.dissmiss();
      netState = NetState.dataSussessState;
      car = value.data!;

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
