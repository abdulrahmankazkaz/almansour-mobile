import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/installment_requirement/installment_requirement.dart';

abstract class InstallmentRepository {
  Future<Result<List<InstallmentRequirement>, FailureModel>> getInstallmentRequirements();
}
