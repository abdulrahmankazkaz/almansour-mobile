import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../entities/spare_part.dart';

abstract class SparePartsRepository {
  Future<Result<List<SparePart>, FailureModel>> getSpareParts();
}
