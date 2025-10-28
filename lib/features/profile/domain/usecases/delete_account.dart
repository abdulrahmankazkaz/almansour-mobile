import 'package:multiple_result/src/result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/no_params.dart';
import '../repositories/profile_repository.dart';

class DeleteAccount implements BaseUseCase<NoParams, DefaultSuccessModel> {
  final ProfileRepository repository;

  DeleteAccount(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(NoParams parameters) async {
    return await repository.deleteAccount();
  }
}
