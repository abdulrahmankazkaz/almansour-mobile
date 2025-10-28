import 'package:dio/dio.dart';
import 'package:mac_mobile/core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import 'package:mac_mobile/features/cart/data/order_endpoints/order_endpoints.dart';
import 'package:mac_mobile/features/cart/entities/order/order_entity.dart';
import 'package:mac_mobile/features/cart/entities/order_details/order_details.dart';
import 'package:mac_mobile/features/cart/entities/order_details_parameters/order_details_parameters.dart';
import 'package:mac_mobile/features/cart/entities/order_parameters/order_parameters.dart';
import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:mac_mobile/features/cart/entities/pay_order_parameters/pay_order_parameters.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';

part 'order_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class OrderDatasource {
  factory OrderDatasource(Dio dio, {String baseUrl}) = _OrderDatasource;

  @POST(OrderEndPoints.sendOrder)
  Future<HttpResponse<DefaultDataModel<OrderSuccess>>> sendOrder(
      @Body() OrderParameters orderParameters);

  @POST(OrderEndPoints.payOrder)
  Future<HttpResponse<DefaultDataModel<OrderSuccess>>> payOrder(
      @Body() PayOrderParameters payOrderParameters);

  @GET(OrderEndPoints.orderDetails)
  Future<HttpResponse<DefaultDataModel<OrderDetails>>> getOrderDetails(
      @Body() OrderDetailsParameters orderDetailsParameters);

  @GET(OrderEndPoints.starter)
  Future<HttpResponse<PaginationDataModel<OrderEntity>>> getOrders(
      @Field() int page);

  @GET(OrderEndPoints.ePaymentTerms)
  Future<HttpResponse<DefaultDataModel<List<String>>>> getEPaymentTerms();

  @DELETE(OrderEndPoints.cancelOrder)
  Future<HttpResponse<DefaultSuccessModel>> cancelOrder(
      @Field() int id);
}
