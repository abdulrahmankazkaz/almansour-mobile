import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../../entities/promotions_entities/promotion/promotion.dart';
import '../repositories/marketing_repository.dart';


class GetPromotions implements BaseUseCase<NoParams, List<Promotion>> {
  final MarketingRepository repository;

  GetPromotions(this.repository);

  @override
  Future<Result<List<Promotion>, FailureModel>> execute(NoParams parameters) async {
    return await repository.getPromotions();
  }
}
