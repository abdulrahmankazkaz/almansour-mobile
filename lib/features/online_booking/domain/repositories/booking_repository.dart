import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../cart/entities/order_details/order_details.dart';
import '../../entities/appointment/appointment.dart';
import '../../entities/appointment_payment/appointment_payment.dart';
import '../../entities/available_appointment/available_appointment.dart';
import '../../entities/dealership/dealership.dart';
import '../../entities/parameters/appointment_parameters.dart';
import '../../entities/parameters/appointment_payment_parameters.dart';
import '../../entities/parameters/approve_update_appointment_parameters.dart';
import '../../entities/parameters/available_appointment_parameters.dart';

abstract class BookingRepository{
  Future<Result<List<Dealership>, FailureModel>> getDealerships();
  Future<Result<List<BasicModel>, FailureModel>> getAppointmentType();
  Future<Result<PaginationDataModel<Appointment>, FailureModel>> getAppointments(PaginationParams paginationParams);
  Future<Result<List<AvailableAppointment>, FailureModel>> getAvailableAppointment(AvailableAppointmentParameters parameters);
  Future<Result<DefaultSuccessModel, FailureModel>> createOtherAppointment(AppointmentParameters parameters);
  Future<Result<DefaultDataModel<AppointmentPayment>, FailureModel>> createRegularAppointment(AppointmentParameters parameters);
  Future<Result<DefaultDataModel<AppointmentPayment>, FailureModel>> makeAppointmentPayment(AppointmentPaymentParameters parameters);
  Future<Result<DefaultDataModel<Appointment>, FailureModel>> approveUpdatedAppointment(ApproveUpdatedAppointmentParameters parameters);
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> getOtherAppointmentPaymentDetails(AppointmentPaymentParameters parameters);
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> getRegularAppointmentPaymentDetails(AppointmentPaymentParameters parameters);

}