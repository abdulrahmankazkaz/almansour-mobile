import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mac_mobile/core/models/basic_input/pagination_input/pagination_input.dart';
import 'package:mac_mobile/core/models/basic_models/default_data_model/default_data_model.dart';
import 'package:mac_mobile/core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import 'package:mac_mobile/core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import 'package:mac_mobile/features/cart/data/data_sources/order_datasource.dart';
import 'package:mac_mobile/features/cart/entities/order/order_entity.dart';
import 'package:mac_mobile/features/cart/entities/order_details/order_details.dart';
import 'package:mac_mobile/features/cart/entities/order_details_parameters/order_details_parameters.dart';
import 'package:mac_mobile/features/cart/entities/order_parameters/order_parameters.dart';
import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:mac_mobile/features/cart/entities/pay_order_parameters/pay_order_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/failure_model/failure.dart';
import '../../../../core/network/network_info.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/repositories/order_repository.dart';

class OrderRepositoryImplementation implements OrderRepository {
  final OrderDatasource datasource;

  final NetworkInfo _networkInfo;

  OrderRepositoryImplementation(this.datasource, this._networkInfo);

  @override
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> getOrderDetails(
      OrderDetailsParameters parameters) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getOrderDetails(parameters);
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
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> sendOrder(
      OrderParameters parameters) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.sendOrder(parameters);
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
  Future<Result<PaginationDataModel<OrderEntity>, FailureModel>> getOrders(
      PaginationParams paginationParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getOrders(paginationParams.page);
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
  Future<Result<DefaultSuccessModel, FailureModel>> cancelOrder(int id) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.cancelOrder(id);
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
  Future<Result<DefaultDataModel<List<String>>, FailureModel>>
      getEPaymentTerms() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.getEPaymentTerms();
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
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> payOrder(PayOrderParameters params) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await datasource.payOrder(params);
        if (response.response.statusCode == 200 || response.response.statusCode == 201) {
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
