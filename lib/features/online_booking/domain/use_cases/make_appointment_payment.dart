import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/appointment_payment/appointment_payment.dart';
import '../../entities/parameters/appointment_payment_parameters.dart';
import '../repositories/booking_repository.dart';

class MakeAppointmentPayment implements BaseUseCase<AppointmentPaymentParameters, DefaultDataModel<AppointmentPayment>> {
  final BookingRepository repository;

  MakeAppointmentPayment(this.repository);

  @override
  Future<Result<DefaultDataModel<AppointmentPayment>, FailureModel>> execute(
      AppointmentPaymentParameters parameters) async {
    return repository.makeAppointmentPayment(parameters);
  }
}
