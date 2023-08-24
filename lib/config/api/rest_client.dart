import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/car.dart';
import '../../models/carpage.dart';
import '../../models/user.dart';
import '../net/result.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  ///-----------------------------user-------------------------
  /// 列表接口
  @POST("user/doLogin")
  Future<Result<User>> doLogin(@Body() Map<String, dynamic> param);

  ///------------------------------car------------------------
  /// 列表接口
  @POST("noteCar/queryList")
  Future<Result<Carpage>> getInfoListData(
    @Query('moduleType') int moduleType,
    @Query('pageNumber') int pageNumber,
    @Query('pageSize') int pageSize,
    @Query('pageType') int pageType,
    @Query('keyword') String keyword,
  );

  /// 详情接口
  @GET("noteCar/queryById")
  Future<Result<Car>> queryCarById(
    @Query('id') String id,
  );
  //
  // /// 点赞接口
  // @POST("thumbsUpOrDown")
  // Future<Result<InfoWorkModel>> likeThumbsUpOrDown(
  //     @Body() Map<String, dynamic> param);
}
