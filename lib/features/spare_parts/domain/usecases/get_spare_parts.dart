import 'package:mac_mobile/features/profile/entities/no_params.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/spare_part.dart';
import '../repositories/spare_parts_repository.dart';

class GetSpareParts implements BaseUseCase<NoParams, List<SparePart>> {
  final SparePartsRepository repository;

  GetSpareParts(this.repository);

  @override
  Future<Result<List<SparePart>, FailureModel>> execute(
      NoParams params) async {
    return repository.getSpareParts();
  }
}
