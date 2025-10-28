import 'package:image_picker/image_picker.dart';
import 'package:mac_mobile/core/models/basic_models/default_data_model/default_data_model.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_use_cases/basic_use_cases.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/image_entity/image_entity.dart';
import '../repositories/main_repository.dart';

class UploadImage implements BaseUseCase<XFile, DefaultDataModel<ImageEntity>> {
  final MainRepository repository;
  UploadImage(this.repository);

  @override
  Future<Result<DefaultDataModel<ImageEntity>, FailureModel>> execute(
      XFile parameters) async {
    return repository.uploadImage(parameters);
  }
}
