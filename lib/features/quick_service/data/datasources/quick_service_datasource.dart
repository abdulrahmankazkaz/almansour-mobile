import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../../domain/entities/quick_service_parameters.dart';
import '../../domain/entities/quick_service_model.dart';
import '../quick_service_endpoints/quick_service_endpoints.dart';

part 'quick_service_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class QuickServiceDatasource {
  factory QuickServiceDatasource(Dio dio, {String baseUrl}) =
      _QuickServiceDatasource;

  @GET(QuickServiceEndPoints.cities)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getCities();

  @GET(QuickServiceEndPoints.dealerships)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getDealerships(
      @Field() int city_id);

  @GET(QuickServiceEndPoints.services)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getServices();

  @GET(QuickServiceEndPoints.available)
  Future<HttpResponse<DefaultDataModel<List<AvailableAppointment>>>> getAvailable(
      @Field() int dealership_id);

  @POST(QuickServiceEndPoints.store)
  Future<HttpResponse<DefaultSuccessModel>> createQuickService(
      @Body() QuickServiceParameters quickServiceParameters);

  @GET(QuickServiceEndPoints.get)
  Future<HttpResponse<DefaultDataModel<List<QuickServiceModel>>>> getQuickServices();
}
