import 'package:dio/dio.dart';
import 'package:mac_mobile/features/online_booking/entities/parameters/approve_update_appointment_parameters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../cart/entities/order_details/order_details.dart';
import '../../entities/appointment/appointment.dart';
import '../../entities/appointment_payment/appointment_payment.dart';
import '../../entities/available_appointment/available_appointment.dart';
import '../../entities/dealership/dealership.dart';
import '../../entities/parameters/appointment_parameters.dart';
import '../../entities/parameters/appointment_payment_parameters.dart';
import '../../entities/parameters/available_appointment_parameters.dart';
import '../booking_endpoints/booking_endpoints.dart';

part 'booking_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class BookingDatasource {
  factory BookingDatasource(Dio dio, {String baseUrl}) = _BookingDatasource;

  @GET(BookingEndPoints.dealerships)
  Future<HttpResponse<DefaultDataModel<List<Dealership>>>> getDealerships();

  @GET(BookingEndPoints.appointmentType)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getAppointmentType();

  @GET(BookingEndPoints.getAppointments)
  Future<HttpResponse<PaginationDataModel<Appointment>>> getAppointments(@Field() int page);

  @GET(BookingEndPoints.availableAppointment)
  Future<HttpResponse<DefaultDataModel<List<AvailableAppointment>>>> getAvailableAppointments(@Body() AvailableAppointmentParameters requestBody);

  @POST(BookingEndPoints.storeOtherAppointment)
  Future<HttpResponse<DefaultSuccessModel>> createOtherAppointment(@Body() AppointmentParameters requestBody);

  @POST(BookingEndPoints.storeRegularAppointment)
  Future<HttpResponse<DefaultDataModel<AppointmentPayment>>> createRegularAppointment(@Body() AppointmentParameters requestBody);

  @POST(BookingEndPoints.initialPayment)
  Future<HttpResponse<DefaultDataModel<AppointmentPayment>>> initialPayment(@Body() AppointmentPaymentParameters requestBody);

  @GET(BookingEndPoints.getOtherPaymentDetails)
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getOtherPaymentDetails(@Body() AppointmentPaymentParameters requestBody);

  @GET(BookingEndPoints.getRegularPaymentDetails)
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getRegularPaymentDetails(@Body() AppointmentPaymentParameters requestBody);

  @POST(BookingEndPoints.approveUpdate)
  Future<HttpResponse<DefaultDataModel<Appointment>>> approveUpdatedAppointment(@Body() ApproveUpdatedAppointmentParameters requestBody);
}
