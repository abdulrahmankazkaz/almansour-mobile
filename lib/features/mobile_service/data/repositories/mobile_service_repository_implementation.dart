import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../online_booking/entities/available_appointment/available_appointment.dart';
import '../../domain/repositories/mobile_service_repository.dart';
import '../../entities/booked_mobile_service/booked_mobile_service.dart';
import '../../entities/parameters/mobile_service_parameters.dart';
import '../data_sources/mobile_service_datasource.dart';

class MobileServiceRepositoryImplementation implements MobileServiceRepository {
  final MobileServiceDatasource datasource;

  final NetworkInfo _networkInfo;
  MobileServiceRepositoryImplementation(this.datasource, this._networkInfo);


  @override
  Future<Result<DefaultSuccessModel, FailureModel>> createMobileService(MobileServiceParameters parameters) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.createMobileService(parameters);
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

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getAreas(int cityId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getAreas(cityId);
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

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getCities() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getCities();
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

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getStreets(int areaId)  async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getStreets(areaId);
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

  @override
  Future<Result<List<AvailableAppointment>, FailureModel>> getAvailableAppointments(int streetId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getAvailableAppointments(streetId);
        if (response.response.statusCode == 200 ||
            response.response.statusCode == 201) {
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

  @override
  Future<Result<DefaultDataModel<List<BookedMobileService>>, FailureModel>> getBookedMobileServices() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getMobileServices();
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

  @override
  Future<Result<DefaultDataModel<List<BasicModel>>, FailureModel>> getMobileServiceType() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getMobileServiceTypes();
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
