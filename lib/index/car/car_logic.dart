import 'package:get/get.dart';
import 'package:qiao/config/route/routes.dart';
import 'package:qiao/models/car.dart';

import '../../config/base/base_controller.dart';
import '../../config/base/base_list_controller.dart';
import '../../config/net/http.dart';
import '../../config/widget/loading_widget.dart';

class CarLogic extends BaseListController {
  List<Car> carList = [];

  @override
  void initData() {
    getnetworkdata(configNetWorkParmas());
  }

  @override
  void getnetworkdata(Map<String, dynamic> info) {
    super.getnetworkdata(info);

    /// 展示loading
    Loading.show();

    Http()
        .client
        .getInfoListData(info['moduleType'], info['pageNumber'],
            info['pageSize'], info['pageType'], info['keyword'])
        .then((value) {
      netState = NetState.dataSussessState;

      /// 结束loading
      Loading.dissmiss();
      List<Car> list = value.data?.list ?? [];
      if (page == 1) {
        carList = list;

        /// 释放下拉控件
        refreshController.refreshCompleted();
      } else {
        carList += list;

        /// 释放上拉控件
        refreshController.loadComplete();
      }

      /// 判断数组为空,如果为空显示空视图
      if (carList.isEmpty) {
        netState = NetState.emptyDataState;
      }

      /// 判断是否可以上拉加载,一页20条,如果本页数据不足20条,说明下面没数据了.
      if (list.length < 20) {
        refreshController.loadNoData();
      }

      update();
    }).catchError((onError) {
      /// 结束loading
      Loading.dissmiss();
      netState = NetState.errorshowRelesh;
      if (page == 1) {
        refreshController.refreshFailed();
      } else {
        refreshController.loadFailed();
      }
      update();
    });
  }

  @override
  void loadMore() {
    super.loadMore();
    page += 1;
    getnetworkdata(configNetWorkParmas());
  }

  @override
  void refreshData() {
    super.refresh();
    page = 1;
    getnetworkdata(configNetWorkParmas());
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    return {
      'moduleType': 0,
      'pageNumber': page,
      "pageSize": 20,
      "pageType": 0,
      'keyword': '',
    };
  }

  /// 跳转详情
  Future<void> pushDetail(String id) async {
    // Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
    // await Get.forceAppUpdate();

    Get.toNamed(AppRoutes.carinfo, arguments: {'id': id});
  }

  // /// 点赞
  // void zanMethond(int index) {
  //   /// 刷新会消失,实现的假的功能.
  //   InfoModel infoModel = carList[index];
  //   infoModel.isThumbs = 1;
  //   carList.removeAt(index);
  //   carList.insert(index, infoModel);
  //   update();
  // }
}
