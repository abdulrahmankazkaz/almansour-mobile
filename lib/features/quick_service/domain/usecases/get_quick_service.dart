import 'package:multiple_result/multiple_result.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../entities/quick_service_model.dart';
import '../repositories/quick_service_repository.dart';

class GetQuickServices implements BaseUseCase<NoParams ,DefaultDataModel<List<QuickServiceModel>>>{
  final QuickServiceRepository repository;

  GetQuickServices(this.repository);

  @override
  Future<Result<DefaultDataModel<List<QuickServiceModel>>,FailureModel>> execute(NoParams params) async {
    return  await repository.getQuickServices();
  }
}
