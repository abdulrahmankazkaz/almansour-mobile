import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/constants/constant.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../entities/notification/notification.dart';
import '../notification_endpoints/notification_endpoints.dart';

part 'notification_datasource.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class NotificationDatasource {
  factory NotificationDatasource(Dio dio, {String baseUrl}) =
  _NotificationDatasource;

  @POST(NotificationEndPoints.fcm)
  Future<HttpResponse<DefaultSuccessModel>> updateFCM(@Field() fcm_token);
  
  @GET(NotificationEndPoints.starter)
  Future<HttpResponse<PaginationDataModel<NotificationEntity>>> getNotifications(@Field() int page);


}
