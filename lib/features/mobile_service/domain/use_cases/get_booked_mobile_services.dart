import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../../entities/booked_mobile_service/booked_mobile_service.dart';
import '../repositories/mobile_service_repository.dart';


class GetBookedMobileServices implements BaseUseCase<NoParams , DefaultDataModel<List<BookedMobileService>>> {
  final MobileServiceRepository repository;

  GetBookedMobileServices(this.repository);

  @override
  Future<Result<DefaultDataModel<List<BookedMobileService>>, FailureModel>> execute(NoParams params) async {
    return await repository.getBookedMobileServices();
  }
}
