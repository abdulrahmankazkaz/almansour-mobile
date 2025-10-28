import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../../entities/installment_requirement/installment_requirement.dart';
import '../repositories/installment_repository.dart';

class GetInstallmentRequirements implements BaseUseCase<NoParams, List<InstallmentRequirement>> {
  final InstallmentRepository repository;

  GetInstallmentRequirements(this.repository);

  @override
  Future<Result<List<InstallmentRequirement>, FailureModel>> execute(NoParams parameters) async {
    return repository.getInstallmentRequirements();
  }
}
