import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/car/car.dart';
import '../repositories/car_repository.dart';

class GetCar implements BaseUseCase<int, Car?> {
  final CarRepository repository;

  GetCar(this.repository);

  @override
  Future<Result<Car?, FailureModel>> execute(int carId) async {
    return repository.getCar(carId);
  }
}
