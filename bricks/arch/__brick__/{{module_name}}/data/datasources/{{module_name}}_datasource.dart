import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../../../core/constants/constant.dart';
import '../{{module_name}}_endpoints/{{module_name}}_endpoints.dart';
import '../models/{{module_name}}_model.dart';
{{#has_parameters}}import '../../domain/entities/{{module_name}}_parameters.dart';{{/has_parameters}}
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';


part '{{module_name}}_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class {{module_name.pascalCase()}}Datasource {

factory {{module_name.pascalCase()}}Datasource(Dio dio, {String baseUrl}) =
_{{module_name.pascalCase()}}Datasource;
@GET({{module_name.pascalCase()}}EndPoints.starter)
Future<HttpResponse<DefaultDataModel<{{module_name.pascalCase()}}Model>>> call({{#has_parameters}}{{> parameters }} parameters{{/has_parameters}});
}
