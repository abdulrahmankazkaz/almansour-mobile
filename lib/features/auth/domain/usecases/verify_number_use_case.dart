import 'package:mac_mobile/features/auth/entities/auth_verify/auth_verify.dart';
import 'package:mac_mobile/features/auth/entities/parameters/auth_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/auth_repository.dart';

class VerifyNumberUseCase extends BaseUseCase<AuthParameters, AuthVerify> {
  final AuthRepository repository;
  VerifyNumberUseCase(this.repository);

  @override
  Future<Result<AuthVerify, FailureModel>> execute(
      AuthParameters parameters) async {
    return await repository.verifyMobileNumber(parameters);
  }
}
