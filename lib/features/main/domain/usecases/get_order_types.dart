import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../repositories/main_repository.dart';

class GetOrderTypes implements BaseUseCase<NoParams, DefaultDataModel<List<BasicModel>>> {
  final MainRepository repository;
  GetOrderTypes(this.repository);

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getOrderTypes();
  }
}
