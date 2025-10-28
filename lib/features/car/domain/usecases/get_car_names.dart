import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/car_repository.dart';

class GetCarNames implements BaseUseCase<int, List<BasicModel>> {
  final CarRepository repository;

  GetCarNames(this.repository);

  @override
  Future<Result<List<BasicModel>, FailureModel>> execute(int brandId) async {
    return repository.getCarNames(brandId);
  }
}
