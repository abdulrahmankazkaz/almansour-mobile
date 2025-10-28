import 'package:dio/dio.dart';
import 'package:mac_mobile/features/geofencing/entities/service_center.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../geofencing_endpoints/geofencing_endpoints.dart';


part 'geofencing_data_source.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class GeofencingDatasource {
  factory GeofencingDatasource(Dio dio, {String baseUrl}) = _GeofencingDatasource;

  @GET(GeofencingEndPoints.serviceCenters)
  Future<HttpResponse<DefaultDataModel<List<ServiceCenter>>>> getServiceCenters();

 }
