import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/repositories/service_offer_repository.dart';
import '../../entities/service_offer/service_offer.dart';
import '../data_sources/service_offer_datasource.dart';

class ServiceOfferRepositoryImplementation implements ServiceOfferRepository {
  final ServiceOfferDatasource datasource;
  final NetworkInfo _networkInfo;

  ServiceOfferRepositoryImplementation(this.datasource, this._networkInfo);



  @override
  Future<Result<List<ServiceOffer>, FailureModel>> getServiceOffers() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getServiceOffers();
        if (response.response.statusCode == 200) {
          return Success(response.data.data);
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
