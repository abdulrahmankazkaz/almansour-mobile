import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/order/order_entity.dart';
import '../repositories/order_repository.dart';

class GetOrders implements BaseUseCase<PaginationParams, PaginationDataModel<OrderEntity>> {
  final OrderRepository repository;

  GetOrders(this.repository);

  @override
  Future<Result<PaginationDataModel<OrderEntity>, FailureModel>> execute(
      PaginationParams parameters) async {
    return repository.getOrders(parameters);
  }
}
