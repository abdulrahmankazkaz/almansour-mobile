import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/no_params.dart';
import '../repositories/profile_repository.dart';

class GetGenders implements BaseUseCase<NoParams, List<BasicModel>> {
  final ProfileRepository repository;

  GetGenders(this.repository);

  @override
  Future<Result<List<BasicModel>, FailureModel>> execute(NoParams parameters) async {
    return repository.getGenders();
  }
}
