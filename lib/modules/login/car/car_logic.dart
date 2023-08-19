import 'package:get/get.dart';
import 'package:qiao/core/page/paging_data.dart';
import 'package:qiao/core/page/paging_params_entity.dart';
import 'package:qiao/core/refresh/page_controller.dart';
import 'package:qiao/entity/po/car_entity.dart';

import '../../../service/api_service.dart';
import 'car_state.dart';

class CarLogic extends PagingController<CarEntity, CarState> {
  final CarState state = CarState();
  final ApiService apiService = Get.find();

  @override
  CarState getState() => CarState();

  @override
  Future<PagingData<CarEntity>?> loadData(PagingParams pagingParams) async {
    // TODO: implement loadData
    // throw UnimplementedError();
    PagingData<CarEntity>? carList = await apiService.getCarList(pagingParams);
    return carList;
  }
}
