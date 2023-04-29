import 'package:get/get.dart';
import 'package:qiao/core/base/apis.dart';
import 'package:qiao/core/request/request_client.dart';
import 'package:qiao/entity/po/login_entity.dart';
import 'package:qiao/entity/po/sa_token_entity.dart';

class ApiService extends GetxService {
  Future<SaTokenEntity?> login(LoginEntity params, {onError}) {
    return requestClient.post<SaTokenEntity>(APIS.login,
        data: params, onError: onError);
  }

  // Future<LoginEntity?> test() {
  //   return requestClient.post<LoginEntity>(APIS.test);
  // }

  // Future<PagingData<Article>?> getArticleList(PagingParams pagingRequest) async{
  //   return await requestClient.post<PagingData<Article>>("https://www.fastmock.site/mock/6d5084df89b4c7a49b28052a0f51c29a/test/api/article/list", data: pagingRequest);
  // }
}
