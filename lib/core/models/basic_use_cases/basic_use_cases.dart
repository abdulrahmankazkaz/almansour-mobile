import 'package:multiple_result/multiple_result.dart';

import '../basic_input/pagination_input/pagination_input.dart';
import '../basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../failure_model/failure.dart';

abstract class BaseUseCase<In, Out> {
  Future<Result<Out, FailureModel>> execute(In parameters);
}

abstract class BasePaginationUseCase<Out> {
  Future<Result<PaginationDataModel<Out>, FailureModel>> execute(
      PaginationParams input);
}

abstract class BaseUseCaseEmptyInput<Out> {
  Future<Result<Out, FailureModel>> execute();
}
