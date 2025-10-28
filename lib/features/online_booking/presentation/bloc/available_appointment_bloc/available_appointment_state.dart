part of 'available_appointment_bloc.dart';

@freezed
class AvailableAppointmentState with _$AvailableAppointmentState {
  const factory AvailableAppointmentState.initial() = _Initial;
  const factory AvailableAppointmentState.loading() = _Loading;
  const factory AvailableAppointmentState.loaded(List<String> availableDates,List<AvailableTime>? availableTimes) = _Loaded;
  const factory AvailableAppointmentState.empty() = _Empty;
  const factory AvailableAppointmentState.failed(String errorMessage) = _Failed;
}
