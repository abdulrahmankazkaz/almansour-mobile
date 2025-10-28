import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/user.dart';
import '../repositories/profile_repository.dart';

class GetProfile implements BaseUseCase<NoParams, User> {
  final ProfileRepository repository;

  GetProfile(this.repository);

  @override
  Future<Result<User, FailureModel>> execute(NoParams parameters) async {
    return repository.getProfile();
  }
}
