import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../repositories/mobile_service_repository.dart';

class GetMobileServiceAvailableAppointments implements BaseUseCase<int, List<AvailableAppointment>> {
  final MobileServiceRepository repository;

  GetMobileServiceAvailableAppointments(this.repository);

  @override
  Future<Result<List<AvailableAppointment>, FailureModel>> execute(int streetId) async {
    return repository.getAvailableAppointments(streetId);
  }
}
