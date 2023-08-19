import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    initData();
  }

  @override
  void onDetached() {
    debugPrint("a11111");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onInactive() {
    debugPrint("a11112");
  }

  @override
  void onPaused() {
    //彻底离开回调
    debugPrint("a11113");
  }

  @override
  void onResumed() {
    //彻底恢复回调
    debugPrint("a11114");
  }

  void initData();
}
