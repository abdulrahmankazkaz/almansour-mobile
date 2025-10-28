import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/booking_repository.dart';

class GetAppointmentType implements BaseUseCase<NoParams, List<BasicModel>> {
  final BookingRepository repository;

  GetAppointmentType(this.repository);

  @override
  Future<Result<List<BasicModel>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getAppointmentType();
  }
}
