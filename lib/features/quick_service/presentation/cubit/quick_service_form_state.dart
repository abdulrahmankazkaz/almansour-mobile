part of 'quick_service_form_cubit.dart';

@immutable
class QuickServiceFormState {
  final int? selectedCityId;
  final int? selectedBranchId;
  final int? selectedServiceId;
  final DateTime? selectedDate;
  final String? selectedTime;

  const QuickServiceFormState({
    this.selectedCityId,
    this.selectedBranchId,
    this.selectedServiceId,
    this.selectedDate,
    this.selectedTime,
  });

  bool get isComplete =>
      selectedCityId != null &&
          selectedBranchId != null &&
          selectedServiceId != null &&
          selectedDate != null &&
          selectedTime != null;

  QuickServiceFormState copyWith({
    int? selectedCityId,
    int? selectedBranchId,
    int? selectedServiceId,
    DateTime? selectedDate,
    String? selectedTime,
  }) {
    return QuickServiceFormState(
      selectedCityId: selectedCityId ?? this.selectedCityId,
      selectedBranchId: selectedBranchId ?? this.selectedBranchId,
      selectedServiceId: selectedServiceId ?? this.selectedServiceId,
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
    );
  }
}
