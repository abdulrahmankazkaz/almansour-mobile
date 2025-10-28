import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:mac_mobile/features/cart/entities/pay_order_parameters/pay_order_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/order_repository.dart';

class PayOrder implements BaseUseCase<PayOrderParameters, DefaultDataModel<OrderSuccess>> {
  final OrderRepository repository;

  PayOrder(this.repository);

  @override
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> execute(
      PayOrderParameters parameters) async {
    return repository.payOrder(parameters);
  }
}
