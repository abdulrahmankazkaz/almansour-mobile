import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../../entities/booked_mobile_service/booked_mobile_service.dart';
import '../../entities/parameters/mobile_service_parameters.dart';
import '../mobile_service_endpoints/mobile_service_endpoints.dart';

part 'mobile_service_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class MobileServiceDatasource {
  factory MobileServiceDatasource(Dio dio, {String baseUrl}) =
      _MobileServiceDatasource;

  @GET(MobileServiceEndPoints.mobileService)
  Future<HttpResponse<DefaultDataModel<List<BookedMobileService>>>> getMobileServices();

  @GET(MobileServiceEndPoints.cities)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getCities();

  @GET(MobileServiceEndPoints.areas)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getAreas(
      @Field() int id);

  @GET(MobileServiceEndPoints.streets)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getStreets(
      @Field() int id);

  @GET(MobileServiceEndPoints.type)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getMobileServiceTypes();

  @GET(MobileServiceEndPoints.availableAppointments)
  Future<HttpResponse<DefaultDataModel<List<AvailableAppointment>>>> getAvailableAppointments(
      @Field() int street_id);

  @POST(MobileServiceEndPoints.createMobileService)
  Future<HttpResponse<DefaultSuccessModel>> createMobileService(
      @Body() MobileServiceParameters mobileServiceParameters);
}
