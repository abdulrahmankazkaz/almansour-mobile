import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/promotions_entities/promotion/promotion.dart';
import '../repositories/marketing_repository.dart';


class ShowPromotion implements BaseUseCase<int, List<Promotion>> {
  final MarketingRepository repository;

  ShowPromotion(this.repository);

  @override
  Future<Result<List<Promotion>, FailureModel>> execute(int id) async {
    return await repository.showPromotion(id);
  }
}
