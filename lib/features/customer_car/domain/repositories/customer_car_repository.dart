import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/parameters/odometer_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/parameters/customer_car_parameters.dart';

abstract class CustomerCarRepository {
  Future<Result<CustomerCar, FailureModel>> setCustomerCar(
      CustomerCarParameters parameters);
  Future<Result<CustomerCar?, FailureModel>> getCustomerCar();
  Future<Result<CustomerCar, FailureModel>> updateOdometer(OdometerParameters odometerParameters);
}
