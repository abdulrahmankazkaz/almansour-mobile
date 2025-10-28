import 'package:multiple_result/multiple_result.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../models/{{module_name}}_model.dart';
import '../../domain/entities/{{module_name}}_parameters.dart';

import '../../domain/repositories/{{module_name}}_repository.dart';
import '../datasources/{{module_name}}_datasource.dart';



class {{module_name.pascalCase()}}RepositoryImplementation implements {{module_name.pascalCase()}}Repository {
  final {{module_name.pascalCase()}}Datasource datasource;

 final NetworkInfo _networkInfo;
  {{module_name.pascalCase()}}RepositoryImplementation(this.datasource,this._networkInfo);

  @override
  Future<Result<{{module_name.pascalCase()}}Model,FailureModel>> call({{#has_parameters}}{{> parameters }} parameters{{/has_parameters}}) async {

          if (await _networkInfo.isConnected) {
            final response = await datasource.call(parameters);
            if (response.response.statusCode != null &&
                response.response.statusCode! >= 200 &&
                response.response.statusCode! < 300) {
              //check if response.data.data as expected Onboarding
              try {
                return Success(response.data.data);
              }
              catch (e) {
                return Error(FailureModel.fromJson(invalidDataFormat));
              }
            }
            else {
              //it should already be caught by the interceptor
              return Error(FailureModel.fromJson(alreadyHandledError));
            }
          }
          else {
            return Error(FailureModel.fromJson(noInternetError));
  }
}}
