import 'package:mac_mobile/core/models/basic_models/default_data_model/default_data_model.dart';
import 'package:mac_mobile/features/online_booking/entities/appointment_payment/appointment_payment.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/parameters/appointment_parameters.dart';
import '../repositories/booking_repository.dart';

class CreateRegularAppointment implements BaseUseCase<AppointmentParameters, DefaultDataModel<AppointmentPayment>> {
  final BookingRepository repository;

  CreateRegularAppointment(this.repository);

  @override
  Future<Result<DefaultDataModel<AppointmentPayment>, FailureModel>> execute(
      AppointmentParameters parameters) async {
    return repository.createRegularAppointment(parameters);
  }
}
