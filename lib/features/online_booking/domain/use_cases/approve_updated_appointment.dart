import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/appointment/appointment.dart';
import '../../entities/parameters/approve_update_appointment_parameters.dart';
import '../repositories/booking_repository.dart';

class ApproveUpdatedAppointment implements BaseUseCase<ApproveUpdatedAppointmentParameters, DefaultDataModel<Appointment>> {
  final BookingRepository repository;

  ApproveUpdatedAppointment(this.repository);

  @override
  Future<Result<DefaultDataModel<Appointment>, FailureModel>> execute(
      ApproveUpdatedAppointmentParameters parameters) async {
    return repository.approveUpdatedAppointment(parameters);
  }
}
