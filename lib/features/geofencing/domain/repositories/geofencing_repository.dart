import 'package:multiple_result/multiple_result.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/service_center.dart';

abstract class GeofencingRepository{
  Future<Result<List<ServiceCenter>, FailureModel>> getCentersLocation();}