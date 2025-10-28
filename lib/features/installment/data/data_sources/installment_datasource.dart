import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/installment_requirement/installment_requirement.dart';
import '../installment_endpoints/installment_endpoints.dart';

part 'installment_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class InstallmentDatasource {
  factory InstallmentDatasource(Dio dio, {String baseUrl}) =
  _InstallmentDatasource;

  @GET(InstallmentEndPoints.installmentRequirement)
  Future<HttpResponse<DefaultDataModel<List<InstallmentRequirement>>>> getInstallmentRequirements();
}
