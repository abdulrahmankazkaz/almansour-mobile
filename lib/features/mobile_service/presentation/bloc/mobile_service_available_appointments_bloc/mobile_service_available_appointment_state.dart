part of 'mobile_service_available_appointment_bloc.dart';

@freezed
class MobileServiceAvailableAppointmentState with _$MobileServiceAvailableAppointmentState {
  const factory MobileServiceAvailableAppointmentState.initial() = _Initial;
  const factory MobileServiceAvailableAppointmentState.loading() = _Loading;
  const factory MobileServiceAvailableAppointmentState.loaded(List<String> availableDates,List<AvailableTime>? availableTimes) = _Loaded;
  const factory MobileServiceAvailableAppointmentState.empty() = _Empty;
  const factory MobileServiceAvailableAppointmentState.failed(String errorMessage) = _Failed;



}
