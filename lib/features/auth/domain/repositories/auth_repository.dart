import 'package:mac_mobile/core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import 'package:mac_mobile/features/auth/entities/auth_verify/auth_verify.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/parameters/auth_parameters.dart';

abstract class AuthRepository {
  Future<Result<DefaultSuccessModel, FailureModel>> login(String phoneNumber);
  Future<Result<DefaultSuccessModel, FailureModel>> resendOTP(
      String phoneNumber);
  Future<Result<AuthVerify, FailureModel>> verifyMobileNumber(
      AuthParameters parameters);
  Future<Result<DefaultSuccessModel, FailureModel>> logout();
}
