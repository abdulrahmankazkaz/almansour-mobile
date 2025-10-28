part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.started() = _Started;
  const factory BrandEvent.getBrand({bool? refresh}) = _GetBrands;
  const factory BrandEvent.getCar(int id) = _GetCar;
  const factory BrandEvent.getCarNames(int brandId) = _GetCarNames;
  const factory BrandEvent.getTrimLevels(int carNameId) = _GetTrimLevels;
}
