import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/available_appointment/available_appointment.dart';
import '../../entities/parameters/available_appointment_parameters.dart';
import '../repositories/booking_repository.dart';

class GetAvailableAppointments
    implements
        BaseUseCase<AvailableAppointmentParameters,
            List<AvailableAppointment>> {
  final BookingRepository repository;

  GetAvailableAppointments(this.repository);

  @override
  Future<Result<List<AvailableAppointment>, FailureModel>> execute(
      AvailableAppointmentParameters parameters) async {
    return repository.getAvailableAppointment(parameters);
  }
}
