import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/service_offer/service_offer.dart';
import '../service_offer_endpoints/service_offer_endpoints.dart';

part 'service_offer_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ServiceOfferDatasource {
  factory ServiceOfferDatasource(Dio dio, {String baseUrl}) =
      _ServiceOfferDatasource;

  @GET(ServiceOfferEndPoints.serviceOffer)
  Future<HttpResponse<DefaultDataModel<List<ServiceOffer>>>> getServiceOffers();


}
