import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'abstract_network.dart';
import 'base_controller.dart';

/**
 *  列表控制器
 * */

abstract class BaseListController extends BaseController
    with AbstractListNetWork {
  /// 定义页码方便子控制器使用
  int page = 1;

  /// 刷新控制器
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  /// 网络请求
  @override
  void getnetworkdata(Map<String, dynamic> info) {}

  /// 上拉加载
  @override
  void loadMore() {}

  /// 下拉刷新
  @override
  void refreshData() {}

  /// 网络请求参数
  @override
  Map<String, dynamic> configNetWorkParmas() {
    throw UnimplementedError();
  }
}
