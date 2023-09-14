import 'package:get/get.dart';
import 'package:qiao/config/enum/module_type.dart';

import '../../config/base/base_common_controller.dart';
import '../../config/base/base_controller.dart';
import '../../config/net/http.dart';
import '../../config/util/log_util.dart';
import '../../config/widget/loading_widget.dart';
import '../../models/fieldvo.dart';

class CaraddLogic extends BaseCommonController {
  List<Fieldvo> fieldList = [];
  @override
  void initData() {
    // TODO: implement initData

    Http().client.queryInformation('').then((value) {
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

  /// 保存
  void save() {
    /// 保存，后关闭返回列表
    Get.toNamed(ModuleTypeEnum.CAR.routepath);
  }
}
