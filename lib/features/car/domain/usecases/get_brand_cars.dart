import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/car/car.dart';
import '../repositories/car_repository.dart';

class GetBrandCars implements BaseUseCase<NoParams, List<Car>> {
  final CarRepository repository;

  GetBrandCars(this.repository);

  @override
  Future<Result<List<Car>, FailureModel>> execute(NoParams parameters) async {
    return repository.getBrandCars();
  }
}
