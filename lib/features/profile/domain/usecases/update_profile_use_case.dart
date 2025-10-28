import 'package:mac_mobile/core/models/failure_model/failure.dart';
import 'package:mac_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:mac_mobile/features/profile/entities/profile_parameters.dart';
import 'package:multiple_result/src/result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../entities/user.dart';

class UpdateProfile implements BaseUseCase<ProfileParameters, User> {
  final ProfileRepository repository;

  UpdateProfile(this.repository);

  @override
  Future<Result<User, FailureModel>> execute(
      ProfileParameters parameters) async {
    return await repository.updateProfile(parameters);
  }
}
