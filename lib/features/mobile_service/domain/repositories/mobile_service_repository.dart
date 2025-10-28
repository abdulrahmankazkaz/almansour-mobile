import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/mobile_service/entities/parameters/mobile_service_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../../entities/booked_mobile_service/booked_mobile_service.dart';

abstract class MobileServiceRepository {
  Future<Result<DefaultSuccessModel, FailureModel>> createMobileService(MobileServiceParameters parameters);
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getCities();
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getAreas(int cityId);
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getStreets(int areaId);
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getMobileServiceType();
  Future<Result<List<AvailableAppointment>, FailureModel>> getAvailableAppointments(int streetId);
  Future<Result<DefaultDataModel<List<BookedMobileService>>, FailureModel>> getBookedMobileServices();

}
