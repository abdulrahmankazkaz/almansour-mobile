import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/config_entity/config_entity.dart';
import '../../entities/image_entity/image_entity.dart';
import '../main_endpoints/main_endpoints.dart';

part 'main_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class MainDatasource {
  factory MainDatasource(Dio dio, {String baseUrl}) =
  _MainDatasource;

  @POST(MainEndPoints.image)
  @MultiPart()
  Future<HttpResponse<DefaultDataModel<ImageEntity>>> uploadImage(@Part() File image);


  @GET(MainEndPoints.orderTypes)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getOrderTypes();

  @GET(MainEndPoints.paymentMethods)
  Future<HttpResponse<DefaultDataModel<List<BasicModel>>>> getPaymentMethods();



}
