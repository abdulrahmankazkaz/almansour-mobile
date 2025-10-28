import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../entities/quick_service_model.dart';
import '../entities/quick_service_parameters.dart';
import '../../../../core/models/failure_model/failure.dart';

abstract class QuickServiceRepository {
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getCities();
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getDealerships(int cityId);
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getServices();
  Future<Result<DefaultDataModel<List<AvailableAppointment>>, FailureModel>> getAvailable(int dealershipId);
  Future<Result<DefaultSuccessModel, FailureModel>> createQuickService(QuickServiceParameters parameters);
  Future<Result<DefaultDataModel<List<QuickServiceModel>>, FailureModel>> getQuickServices();


}
