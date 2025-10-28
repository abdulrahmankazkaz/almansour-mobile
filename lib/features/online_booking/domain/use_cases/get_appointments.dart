import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/appointment/appointment.dart';
import '../repositories/booking_repository.dart';

class GetAppointments implements BaseUseCase<PaginationParams, PaginationDataModel<Appointment>> {
  final BookingRepository repository;

  GetAppointments(this.repository);

  @override
  Future<Result<PaginationDataModel<Appointment>, FailureModel>> execute(
      PaginationParams parameters) async {
    return repository.getAppointments(parameters);
  }
}
