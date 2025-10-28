import 'package:mac_mobile/features/cart/entities/order/order_entity.dart';
import 'package:mac_mobile/features/cart/entities/order_details/order_details.dart';
import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:mac_mobile/features/cart/entities/pay_order_parameters/pay_order_parameters.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/order_details_parameters/order_details_parameters.dart';
import '../../entities/order_parameters/order_parameters.dart';

abstract class OrderRepository {
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> sendOrder(OrderParameters parameters);
  Future<Result<DefaultDataModel<OrderSuccess>, FailureModel>> payOrder(PayOrderParameters parameters);
  Future<Result<DefaultDataModel<OrderDetails>, FailureModel>> getOrderDetails(OrderDetailsParameters parameters);
  Future<Result<PaginationDataModel<OrderEntity>, FailureModel>> getOrders(PaginationParams paginationParams);
  Future<Result<DefaultDataModel<List<String>>, FailureModel>> getEPaymentTerms();
  Future<Result<DefaultSuccessModel, FailureModel>> cancelOrder(int id);
}
