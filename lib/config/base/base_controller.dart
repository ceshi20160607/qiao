import 'package:get/get.dart';
import 'package:qiao/config/util/log_util.dart';

enum NetState {
  /// 初始状态
  initializeState,

  /// 加载状态
  loadingState,

  /// 错误状态,显示失败界面
  errorState,

  /// 错误状态,只弹错误信息
  erroronlyTotal,

  /// 错误状态,显示刷新按钮
  errorshowRelesh,

  /// 没有更多数据
  noMoreDataState,

  /// 是否还有更多数据
  hasMoreDataState,

  /// 空数据状态
  emptyDataState,

  /// 数据获取成功状态
  dataSussessState,
}

abstract class BaseController extends SuperController {
  /// 定义网络状态方便子控制器使用
  NetState netState = NetState.initializeState;

  @override
  void onReady() {
    super.onReady();
    logD("a11112ready");
    initData();
  }

  @override
  void onDetached() {
    logD("a11111");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    logD("a11112init");
  }

  @override
  void onInactive() {
    logD("a11112");
  }

  @override
  void onPaused() {
    //彻底离开回调
    logD("a11113");
  }

  @override
  void onResumed() {
    //彻底恢复回调
    logD("a11114");
  }

  void initData();
}
