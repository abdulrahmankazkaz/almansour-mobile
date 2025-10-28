import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../repositories/order_repository.dart';

class GetPaymentTerms
    implements BaseUseCase<NoParams, DefaultDataModel<List<String>>> {
  final OrderRepository repository;

  GetPaymentTerms(this.repository);

  @override
  Future<Result<DefaultDataModel<List<String>>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getEPaymentTerms();
  }
}
