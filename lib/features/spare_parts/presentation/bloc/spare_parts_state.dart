part of 'spare_parts_bloc.dart';

@freezed
class SparePartsState with _$SparePartsState {
  const factory SparePartsState.initial() = _Initial;
  const factory SparePartsState.loading() = _Loading;
  const factory SparePartsState.loaded(List<SparePart> spareParts) = _Loaded;
  const factory SparePartsState.empty() = _Empty;
  const factory SparePartsState.failed(String message) = _Failed;
}
