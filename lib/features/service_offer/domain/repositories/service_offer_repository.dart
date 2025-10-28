import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/service_offer/service_offer.dart';

abstract class ServiceOfferRepository {
  Future<Result<List<ServiceOffer>, FailureModel>> getServiceOffers();
}
