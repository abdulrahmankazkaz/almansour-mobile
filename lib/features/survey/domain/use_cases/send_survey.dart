import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/survey_parameters.dart';
import '../repositories/survey_repository.dart';

class SendSurvey implements BaseUseCase<SurveyParameters, DefaultSuccessModel> {
  final SurveyRepository repository;

  SendSurvey(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(
      SurveyParameters parameters) async {
    return repository.sendSurvey(parameters);
  }
}
