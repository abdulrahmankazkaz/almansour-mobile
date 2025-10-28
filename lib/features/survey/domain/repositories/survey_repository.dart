import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/survey_parameters.dart';

abstract class SurveyRepository {
  Future<Result<DefaultSuccessModel, FailureModel>> sendSurvey(SurveyParameters parameters);
}
