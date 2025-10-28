import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/car_brand/car_brand.dart';
import '../repositories/car_repository.dart';

class GetBrands implements BaseUseCase<NoParams, List<CarBrand>> {
  final CarRepository repository;

  GetBrands(this.repository);

  @override
  Future<Result<List<CarBrand>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getBrands();
  }
}
