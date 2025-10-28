import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/customer_car/customer_car.dart';
import '../repositories/customer_car_repository.dart';

class GetCustomerCar implements BaseUseCase<NoParams, CustomerCar?> {
  final CustomerCarRepository repository;

  GetCustomerCar(this.repository);

  @override
  Future<Result<CustomerCar?, FailureModel>> execute(NoParams parameters) async {
    return await repository.getCustomerCar();
  }
}
