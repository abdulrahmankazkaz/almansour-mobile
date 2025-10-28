import 'package:multiple_result/multiple_result.dart';

import '../entities/{{module_name}}.dart';
{{#has_parameters}}import '../entities/{{module_name}}_parameters.dart';{{/has_parameters}}
import '../../../../core/models/failure_model/failure.dart';

abstract class {{module_name.pascalCase()}}Repository {
  Future<Result<{{module_name.pascalCase()}},FailureModel>> call({{#has_parameters}}{{> parameters }} parameters{{/has_parameters}});
}
