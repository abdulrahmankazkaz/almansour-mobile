part of 'mobile_service_form_cubit.dart';

@immutable
class MobileServiceFormState {
  final int? selectedCityId;
  final int? selectedAreaId;
  final int? selectedStreetId;

  const MobileServiceFormState(
      {this.selectedCityId, this.selectedAreaId, this.selectedStreetId});

  bool get isComplete =>
      selectedCityId != null &&
      selectedAreaId != null &&
      selectedStreetId != null;

  MobileServiceFormState copyWith(
      {int? selectedCityId, int? selectedAreaId, int? selectedStreetId}) {
    return MobileServiceFormState(
        selectedCityId: selectedCityId ?? this.selectedCityId,
        selectedAreaId: selectedAreaId ?? this.selectedAreaId,
        selectedStreetId: selectedStreetId ?? this.selectedStreetId);
  }
}
