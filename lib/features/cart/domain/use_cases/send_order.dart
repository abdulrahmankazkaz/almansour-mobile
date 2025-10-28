import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/order_parameters/order_parameters.dart';
import '../repositories/order_repository.dart';

class SendOrder implements BaseUseCase<OrderParameters, DefaultDataModel<OrderSuccess>> {
  final OrderRepository repository;

  SendOrder(this.repository);

  @override
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> execute(
      OrderParameters parameters) async {
    return repository.sendOrder(parameters);
  }
}
