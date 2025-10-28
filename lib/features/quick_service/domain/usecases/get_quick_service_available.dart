import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../repositories/quick_service_repository.dart';

class GetQuickServiceAvailable implements BaseUseCase<int, DefaultDataModel<List<AvailableAppointment>>> {
  final QuickServiceRepository repository;

  GetQuickServiceAvailable(this.repository);

  @override
  Future<Result<DefaultDataModel<List<AvailableAppointment>>, FailureModel>> execute(int dealershipId) async {
    return await repository.getAvailable(dealershipId);
  }
}