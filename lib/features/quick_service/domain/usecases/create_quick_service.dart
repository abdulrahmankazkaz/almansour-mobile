import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../entities/quick_service_parameters.dart';
import '../repositories/quick_service_repository.dart';


class CreateQuickService implements BaseUseCase<QuickServiceParameters, DefaultSuccessModel> {
  final QuickServiceRepository repository;

  CreateQuickService(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(QuickServiceParameters parameters) async {
    return await repository.createQuickService(parameters);
  }
}
