import 'abstract_network.dart';
import 'base_controller.dart';

/**
 *  普通视图控制器
 * */

abstract class BaseCommonController extends BaseController
    with AbstractNetWork {
  @override
  void getnetworkdata(Map<String, dynamic> info) {
    // TODO: implement getnetworkdata
  }

  @override
  Map<String, dynamic> configNetWorkParmas() {
    // TODO: implement configNetWorkParmas
    throw UnimplementedError();
  }
}
