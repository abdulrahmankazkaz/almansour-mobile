import 'package:mac_mobile/core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/auth_repository.dart';

class ResendOTPUseCase extends BaseUseCase<String, DefaultSuccessModel> {
  final AuthRepository repository;
  ResendOTPUseCase(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(
      String parameters) async {
    return await repository.resendOTP(parameters);
  }
}
