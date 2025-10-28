import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/mobile_service_repository.dart';


class GetStreets implements BaseUseCase<int , DefaultDataModel<List<BasicModel>>> {
  final MobileServiceRepository repository;

  GetStreets(this.repository);

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> execute(int areaId) async {
    return await repository.getStreets(areaId);
  }
}
