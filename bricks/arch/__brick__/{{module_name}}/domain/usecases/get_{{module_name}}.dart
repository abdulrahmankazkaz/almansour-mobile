import 'package:multiple_result/multiple_result.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../entities/{{module_name}}.dart';
{{#has_parameters}}import '../entities/{{module_name}}_parameters.dart';{{/has_parameters}}
import '../repositories/{{module_name}}_repository.dart';

class Get{{module_name.pascalCase()}} implements BaseUseCase<{{#has_parameters}}{{> parameters }}{{/has_parameters}} {{^has_parameters}}void{{/has_parameters}},{{module_name.pascalCase()}}>{
  final {{module_name.pascalCase()}}Repository repository;

  Get{{module_name.pascalCase()}}(this.repository);

  @override
  Future<Result<{{module_name.pascalCase()}},FailureModel>> execute({{#has_parameters}}{{> parameters }} parameters{{/has_parameters}}{{^has_parameters}}input{{/has_parameters}}) async {
    return repository({{#has_parameters}}parameters{{/has_parameters}});
  }
}
