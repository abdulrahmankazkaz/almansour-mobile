import 'package:image_picker/image_picker.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';
import 'package:mac_mobile/features/main/entities/config_entity/config_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import '../../../../core/models/basic_models/default_data_model/default_data_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/image_entity/image_entity.dart';

abstract class MainRepository {
  Future<Result<DefaultDataModel<ImageEntity>,FailureModel>> uploadImage(XFile image);
  Future<Result<DefaultDataModel<List<BasicModel>>,FailureModel>> getOrderTypes();
  Future<Result<DefaultDataModel<List<BasicModel>>,FailureModel>> getPaymentMethods();
}
