import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../../entities/service_offer/service_offer.dart';
import '../repositories/service_offer_repository.dart';

class GetServiceOffers implements BaseUseCase<NoParams, List<ServiceOffer>> {
  final ServiceOfferRepository repository;

  GetServiceOffers(this.repository);

  @override
  Future<Result<List<ServiceOffer>, FailureModel>> execute(NoParams parameters) async {
    return repository.getServiceOffers();
  }
}
