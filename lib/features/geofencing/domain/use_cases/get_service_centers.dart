import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../profile/entities/no_params.dart';
import '../../entities/service_center.dart';
import '../repositories/geofencing_repository.dart';

class GetServiceCenters implements BaseUseCase<NoParams, List<ServiceCenter>> {
  final GeofencingRepository repository;

  GetServiceCenters(this.repository);

  @override
  Future<Result<List<ServiceCenter>, FailureModel>> execute(
      NoParams parameters) async {
    return repository.getCentersLocation();
  }
}
