import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/default_success_model/DefaultSuccessModel.dart';
import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../repositories/notification_repository.dart';

class UpdateFCMToken implements BaseUseCase<String, DefaultSuccessModel> {
  final NotificationRepository repository;
  UpdateFCMToken(this.repository);

  @override
  Future<Result<DefaultSuccessModel, FailureModel>> execute(String token) async {
    return repository.updateFCMToken(token);
  }
}
