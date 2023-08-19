import 'package:get/get.dart';
import 'package:qiao/core/base/apis.dart';
import 'package:qiao/core/page/paging_params_entity.dart';
import 'package:qiao/core/request/request_client.dart';
import 'package:qiao/entity/po/login_entity.dart';
import 'package:qiao/entity/po/sa_token_entity.dart';

import '../core/page/paging_data.dart';
import '../entity/po/car_entity.dart';

class ApiService extends GetxService {
  Future<SaTokenEntity?> login(LoginEntity params, {onError}) {
    return requestClient.post<SaTokenEntity>(APIS.login,
        data: params,
        // headers: {"Content-Type": "application/json"},
        onError: onError);
  }

  // Future<LoginEntity?> test() {
  //   return requestClient.post<LoginEntity>(APIS.test);
  // }

  Future<PagingData<CarEntity>?> getCarList(PagingParams pagingRequest) async {
    return await requestClient.post<PagingData<CarEntity>>(
        APIS.noteCarQueryList,
        data: pagingRequest);
  }
}
