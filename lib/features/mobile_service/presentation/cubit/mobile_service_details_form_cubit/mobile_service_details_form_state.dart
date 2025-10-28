part of 'mobile_service_details_form_cubit.dart';

@immutable
class MobileServiceDetailsFormState {
  final DateTime? selectedDate;
  final String? selectedTime;
  final int? selectedServiceId;

  const MobileServiceDetailsFormState(
      {this.selectedDate, this.selectedTime, this.selectedServiceId});

  bool get isComplete =>
      selectedDate != null && selectedTime != null && selectedServiceId != null;

  MobileServiceDetailsFormState copyWith(
      {DateTime? selectedDate, String? selectedTime, int? selectedServiceId}) {
    return MobileServiceDetailsFormState(
        selectedDate: selectedDate ?? this.selectedDate,
        selectedTime: selectedTime ?? this.selectedTime,
        selectedServiceId: selectedServiceId ?? this.selectedServiceId);
  }
}
