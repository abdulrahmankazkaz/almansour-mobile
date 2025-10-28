import 'package:dio/dio.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/cart/entities/order_details/order_details.dart';
import 'package:mac_mobile/features/cart/entities/order_success/order_success.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/car/car.dart';
import '../../entities/car_brand/car_brand.dart';
import '../../entities/parameters/booking_car_parameters.dart';
import '../car_endpoints/car_endpoints.dart';

part 'car_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class CarDatasource {
  factory CarDatasource(Dio dio, {String baseUrl}) = _CarDatasource;

  @GET(CarEndPoints.brands)
  Future<HttpResponse<DefaultDataModel<List<CarBrand>>>> getBrands();

  @GET(CarEndPoints.carName)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getCarNames(
      @Field() int id);

  @GET(CarEndPoints.trimLevel)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getTrimLevels(
      @Field() int id);

  @GET(CarEndPoints.brandCars)
  Future<HttpResponse<DefaultDataModel<List<Car>>>> getBrandCars();

  @GET(CarEndPoints.car)
  Future<HttpResponse<DefaultDataModel<Car?>>> getCar(@Field() int id);

}
