import 'package:mac_mobile/features/online_booking/entities/dealership/dealership.dart';
import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/booking_repository.dart';

class GetDealerships implements BaseUseCase<NoParams, List<Dealership>> {
  final BookingRepository repository;

  GetDealerships(this.repository);

  @override
  Future<Result<List<Dealership>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getDealerships();
  }
}
