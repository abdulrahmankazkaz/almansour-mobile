import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../cart/entities/order_details/order_details.dart';
import '../../entities/parameters/appointment_payment_parameters.dart';
import '../repositories/booking_repository.dart';

class GetRegularAppointmentPaymentDetails implements BaseUseCase<AppointmentPaymentParameters, DefaultDataModel<OrderDetails>> {
  final BookingRepository repository;

  GetRegularAppointmentPaymentDetails(this.repository);

  @override
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> execute(
      AppointmentPaymentParameters parameters) async {
    return repository.getRegularAppointmentPaymentDetails(parameters);
  }
}
