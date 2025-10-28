import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/promotions_entities/promotion/promotion.dart';
import '../marketing_endpoints/marketing_endpoints.dart';

part 'marketing_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class MarketingDatasource {
  factory MarketingDatasource(Dio dio, {String baseUrl}) =
  _MarketingDatasource;






  @GET(MarketingEndPoints.promotions)
  Future<HttpResponse<DefaultDataModel<List<Promotion>>>> getPromotions();

  @GET(MarketingEndPoints.promotions)
  Future<HttpResponse<DefaultDataModel<List<Promotion>>>> showPromotion(@Field() int id);


}
