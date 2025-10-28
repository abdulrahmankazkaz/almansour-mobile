import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/{{module_name}}.dart';



part '{{module_name}}_model.freezed.dart';
part '{{module_name}}_model.g.dart';

@freezed
class {{module_name.pascalCase()}}Model extends {{module_name.pascalCase()}} with _${{module_name.pascalCase()}}Model {
const factory  {{module_name.pascalCase()}}Model({
@JsonKey(name: 'id') required int id,
}) = _{{module_name.pascalCase()}}Model;

factory  {{module_name.pascalCase()}}Model.fromJson(Map<String, Object?> json) => _${{module_name.pascalCase()}}ModelFromJson(json);
}

