part of 'brand_bloc.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState.initial() = _Initial;
  const factory BrandState.brandLoading() = _BrandLoading;
  const factory BrandState.carLoading() = _CarLoading;
  const factory BrandState.carFetched(Car? car) = _CarFetched;
  const factory BrandState.trimLevelLoading() = _TrimLevelLoading;
  const factory BrandState.brandLoaded(List<CarBrand> brands) = _BrandLoaded;
  const factory BrandState.carNamesLoaded(List<BasicModel> carNames) =
      _CarNamesLoaded;
  const factory BrandState.trimLevelsLoaded(List<BasicModel> trimLevels) =
      _TrimLevelsLoaded;
  const factory BrandState.failed(String errorMessage) = _Failed;
}
