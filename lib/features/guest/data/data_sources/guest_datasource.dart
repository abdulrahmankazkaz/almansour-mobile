import 'package:dio/dio.dart';
import 'package:mac_mobile/core/models/basic_models/default_data_model/default_data_model.dart';
import 'package:mac_mobile/features/guest/entities/car_checked/car_checked.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../entities/parameters/check_car_params.dart';
import '../guest_endpoints/guest_endpoints.dart';

part 'guest_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class GuestDatasource {
  factory GuestDatasource(Dio dio, {String baseUrl}) = _GuestDatasource;

  @POST(GuestEndPoints.checkVINNumber)
  Future<HttpResponse<DefaultDataModel<CarChecked>>> checkCar(
      @Body() CheckCarParameters checkCarParameters);

}
