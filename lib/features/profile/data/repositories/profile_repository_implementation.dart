import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../entities/profile_parameters.dart';
import '../../entities/user.dart';
import '../datasources/profile_datasource.dart';

class ProfileRepositoryImplementation implements ProfileRepository {
  final ProfileDatasource datasource;
  final NetworkInfo _networkInfo;

  ProfileRepositoryImplementation(this.datasource, this._networkInfo);

  @override
  Future<Result<User, FailureModel>> updateProfile(
      ProfileParameters parameters) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.updateProfile(parameters);
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

  @override
  Future<Result<User, FailureModel>> getProfile() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getProfile();
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

  @override
  Future<Result<List<BasicModel>, FailureModel>> getCities() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getCities();
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

  @override
  Future<Result<List<BasicModel>, FailureModel>> getGenders() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getGenders();
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

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> deactivateAccount() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.deactivateAccount();
        if (response.response.statusCode == 200) {
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
  Future<Result<DefaultSuccessModel, FailureModel>> deleteAccount() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.deleteAccount();
        if (response.response.statusCode == 200) {
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
