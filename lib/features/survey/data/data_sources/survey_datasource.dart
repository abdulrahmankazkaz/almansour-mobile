import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../entities/survey_parameters.dart';
import '../survey_endpoints/survey_endpoints.dart';

part 'survey_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class SurveyDatasource {
  factory SurveyDatasource(Dio dio, {String baseUrl}) =
  _SurveyDatasource;

  @POST(SurveyEndPoints.sendSurvey)
  Future<HttpResponse<DefaultSuccessModel>> sendSurvey(
      @Body() SurveyParameters parameters);




}
