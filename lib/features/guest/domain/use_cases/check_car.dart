import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/car_checked/car_checked.dart';
import '../../entities/parameters/check_car_params.dart';
import '../repositories/guest_repository.dart';

class CheckCar implements BaseUseCase<CheckCarParameters, DefaultDataModel<CarChecked>> {
  final GuestRepository repository;

  CheckCar(this.repository);

  @override
  Future<Result<DefaultDataModel<CarChecked>, FailureModel>> execute(CheckCarParameters parameters) async {
    return await repository.checkCar(parameters);
  }
}
