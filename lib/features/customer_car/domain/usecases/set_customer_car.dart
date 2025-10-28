import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/customer_car/customer_car.dart';
import '../../entities/parameters/customer_car_parameters.dart';
import '../repositories/customer_car_repository.dart';

class SetCustomerCar
    implements BaseUseCase<CustomerCarParameters, CustomerCar> {
  final CustomerCarRepository repository;

  SetCustomerCar(this.repository);

  @override
  Future<Result<CustomerCar, FailureModel>> execute(
      CustomerCarParameters parameters) async {
    return repository.setCustomerCar(parameters);
  }
}
