import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/parameters/odometer_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/customer_car_repository.dart';

class UpdateOdometer implements BaseUseCase<OdometerParameters, CustomerCar> {
  final CustomerCarRepository repository;

  UpdateOdometer(this.repository);

  @override
  Future<Result<CustomerCar, FailureModel>> execute(OdometerParameters parameters) async {
    return repository.updateOdometer(parameters);
  }
}
