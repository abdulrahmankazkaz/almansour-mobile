import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/notification/notification.dart';

abstract class NotificationRepository {
  Future<Result<DefaultSuccessModel, FailureModel>> updateFCMToken(String token);
  Future<Result<PaginationDataModel<NotificationEntity>, FailureModel>> getNotification(PaginationParams params);
}
