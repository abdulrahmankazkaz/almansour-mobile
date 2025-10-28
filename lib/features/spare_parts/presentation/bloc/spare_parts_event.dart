part of 'spare_parts_bloc.dart';

@freezed
class SparePartsEvent with _$SparePartsEvent {
  const factory SparePartsEvent.started() = _Started;
  const factory SparePartsEvent.getSpareParts({bool? refresh}) = _GetSpareParts;
  const factory SparePartsEvent.searchSpareParts(String text) = _SearchSpareParts;
}
