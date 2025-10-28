import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/profile_parameters.dart';
import '../../entities/user.dart';

abstract class ProfileRepository {
  Future<Result<User, FailureModel>> updateProfile(ProfileParameters parameters);
  Future<Result<User, FailureModel>> getProfile();
  Future<Result<List<BasicModel>, FailureModel>> getGenders();
  Future<Result<List<BasicModel>, FailureModel>> getCities();
  Future<Result<DefaultSuccessModel, FailureModel>> deactivateAccount();
  Future<Result<DefaultSuccessModel, FailureModel>> deleteAccount();
}
