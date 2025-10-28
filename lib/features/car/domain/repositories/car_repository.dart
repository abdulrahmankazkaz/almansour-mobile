import 'package:multiple_result/multiple_result.dart';

import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/models/failure_model/failure.dart';
import '../../entities/car/car.dart';
import '../../entities/car_brand/car_brand.dart';

abstract class CarRepository {
  Future<Result<List<CarBrand>, FailureModel>> getBrands();

  Future<Result<List<Car>, FailureModel>> getBrandCars();

  Future<Result<Car?, FailureModel>> getCar(int id);

  Future<Result<List<BasicModel>, FailureModel>> getCarNames(int brandId);

  Future<Result<List<BasicModel>, FailureModel>> getTrimLevels(int carNameId);




}
