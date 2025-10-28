
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/order_repository.dart';

class CancelOrder implements BaseUseCase<int, DefaultSuccessModel> {
  final OrderRepository repository;

  CancelOrder(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(
      int parameters) async {
    return repository.cancelOrder(parameters);
  }
}
