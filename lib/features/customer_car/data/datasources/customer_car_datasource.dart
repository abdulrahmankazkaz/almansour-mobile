import 'package:dio/dio.dart';
import 'package:mac_mobile/core/models/basic_models/default_data_model/default_data_model.dart';
import 'package:mac_mobile/features/customer_car/entities/customer_car/customer_car.dart';
import 'package:mac_mobile/features/customer_car/entities/parameters/odometer_parameters.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../entities/parameters/customer_car_parameters.dart';
import '../customer_car_endpoints/customer_car_endpoints.dart';

part 'customer_car_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class CustomerCarDatasource {
  factory CustomerCarDatasource(Dio dio, {String baseUrl}) =
      _CustomerCarDatasource;

  @POST(CustomerCarEndPoints.storeCustomerCar)
  Future<HttpResponse<DefaultDataModel<CustomerCar>>> setCustomerCar(
      @Body() CustomerCarParameters customerCarParams);

  @GET(CustomerCarEndPoints.customerCar)
  Future<HttpResponse<DefaultDataModel<CustomerCar?>>> getCustomerCar();

  @PUT(CustomerCarEndPoints.odometer)
  Future<HttpResponse<DefaultDataModel<CustomerCar>>> updateOdometer(
      @Body() OdometerParameters odometerParameters);
}
