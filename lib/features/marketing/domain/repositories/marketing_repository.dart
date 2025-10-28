import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/promotions_entities/promotion/promotion.dart';

abstract class MarketingRepository {
  Future<Result<List<Promotion>, FailureModel>> getPromotions();
  Future<Result<List<Promotion>, FailureModel>> showPromotion(int id);
}
