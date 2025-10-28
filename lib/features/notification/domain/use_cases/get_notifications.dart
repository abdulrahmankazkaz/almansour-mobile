import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_input/pagination_input/pagination_input.dart';
import '../../../../core/models/basic_models/pagination/pagination_data_model/pagination_data_model.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/notification/notification.dart';
import '../repositories/notification_repository.dart';

class GetNotifications implements BaseUseCase<PaginationParams, PaginationDataModel<NotificationEntity>> {
  final NotificationRepository repository;
  GetNotifications(this.repository);

  @override
  Future<Result<PaginationDataModel<NotificationEntity>, FailureModel>> execute(PaginationParams params) async {
    return repository.getNotification(params);
  }
}
