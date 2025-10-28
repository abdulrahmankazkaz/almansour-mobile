import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/parameters/appointment_parameters.dart';
import '../repositories/booking_repository.dart';

class CreateOtherAppointment implements BaseUseCase<AppointmentParameters, DefaultSuccessModel> {
  final BookingRepository repository;

  CreateOtherAppointment(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(
      AppointmentParameters parameters) async {
    return repository.createOtherAppointment(parameters);
  }
}
