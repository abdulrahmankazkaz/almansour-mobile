part of 'brand_cars_bloc.dart';

@freezed
class BrandCarsState with _$BrandCarsState {
  const factory BrandCarsState.initial() = _Initial;
  const factory BrandCarsState.loading() = _Loading;
  const factory BrandCarsState.loaded(List<Car> cars) = _Loaded;
  const factory BrandCarsState.carLoaded(Car? car) = _CarLoaded;
  const factory BrandCarsState.failed(String errorMessage) = _Failed;
}
