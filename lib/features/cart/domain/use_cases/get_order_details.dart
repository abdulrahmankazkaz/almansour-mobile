import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/order_details/order_details.dart';
import '../../entities/order_details_parameters/order_details_parameters.dart';
import '../repositories/order_repository.dart';

class GetOrderDetails implements BaseUseCase<OrderDetailsParameters, DefaultDataModel<OrderDetails>> {
  final OrderRepository repository;

  GetOrderDetails(this.repository);

  @override
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> execute(
      OrderDetailsParameters parameters) async {
    return repository.getOrderDetails(parameters);
  }
}
