import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/parameters/mobile_service_parameters.dart';
import '../repositories/mobile_service_repository.dart';


class CreateMobileService implements BaseUseCase<MobileServiceParameters, DefaultSuccessModel> {
  final MobileServiceRepository repository;

  CreateMobileService(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(MobileServiceParameters parameters) async {
    return await repository.createMobileService(parameters);
  }
}
