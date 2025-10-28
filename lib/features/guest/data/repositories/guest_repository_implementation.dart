import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mac_mobile/features/guest/entities/car_checked/car_checked.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/repositories/guest_repository.dart';
import '../../entities/parameters/check_car_params.dart';
import '../data_sources/guest_datasource.dart';

class GuestRepositoryImplementation implements GuestRepository {
  final GuestDatasource datasource;

  final NetworkInfo _networkInfo;
  GuestRepositoryImplementation(this.datasource, this._networkInfo);



  @override
  Future<Result<DefaultDataModel<CarChecked>, FailureModel>> checkCar(CheckCarParameters parameters) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.checkCar(parameters);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
          return Success(response.data);
        } else {
          return Error(FailureModel.fromJson(response.response.data));
        }
      } on DioException catch (e) {
        if (e.type == DioExceptionType.cancel) {
          return Error(
              FailureModel(message: DioExceptionType.cancel.toString()));
        }
        else if(e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout || e.type == DioExceptionType.sendTimeout){
          return Error(FailureModel(message: LocaleKeys.dioError_timeOut.tr()));
        }
        else {
          try {
            if (e.response != null && e.response?.data != null) {
              if (e.response!.data is String) {
                // Try to parse the string as JSON
                try {
                  var decodeJson = json.decode(e.response!.data) as Map<String, dynamic>;
                  return Error(FailureModel.fromJson(decodeJson));
                } catch (jsonError) {
                  // If it's not a JSON string, return a generic server error
                  return Error(FailureModel.fromJson(serverError));
                }
              } else if (e.response!.data is Map<String, dynamic>) {
                return Error(FailureModel.fromJson(e.response!.data));
              } else {
                return Error(FailureModel.fromJson(serverError));
              }
            } else {
              return Error(FailureModel.fromJson(serverError));
            }
          } catch (jsonError) {
            return Error(FailureModel.fromJson(serverError));
          }
        }
      }
    } else {
      return Error(
          FailureModel(message: LocaleKeys.dioError_noInternetError.tr()));
    }
  }


}
