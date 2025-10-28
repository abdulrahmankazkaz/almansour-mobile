import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../entities/spare_part.dart';
import '../spare_parts_endpoints/spare_parts_endpoints.dart';

part 'spare_parts_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class SparePartsDatasource {
  factory SparePartsDatasource(Dio dio, {String baseUrl}) =
      _SparePartsDatasource;

  @GET(SparePartsEndPoints.spareParts)
  Future<HttpResponse<DefaultDataModel<List<SparePart>>>> getSpareParts();
}
