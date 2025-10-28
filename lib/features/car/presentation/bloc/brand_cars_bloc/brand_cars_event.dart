part of 'brand_cars_bloc.dart';

@freezed
class BrandCarsEvent with _$BrandCarsEvent {
  const factory BrandCarsEvent.started() = _Started;
  const factory BrandCarsEvent.getBrandCars(int brandId) = _GetBrandCars;
  const factory BrandCarsEvent.getCar(int carId) = _GetCar;
}
