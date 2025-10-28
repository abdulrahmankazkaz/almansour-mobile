part of 'appointment_checkout_bloc.dart';

@freezed
class AppointmentCheckoutState with _$AppointmentCheckoutState {
  const factory AppointmentCheckoutState.initial() = _Initial;
  const factory AppointmentCheckoutState.loading() = _Loading;
  const factory AppointmentCheckoutState.detailsLoading() = _DetailsLoading;
  const factory AppointmentCheckoutState.detailsLoaded(OrderDetails totals) = _DetailsLoaded;
  const factory AppointmentCheckoutState.invalidParameters(String validationMessage) = _InvalidParameters;
  const factory AppointmentCheckoutState.success(AppointmentPayment appointmentPayment) = _Success;
  const factory AppointmentCheckoutState.failed(String failedMessage) = _Failed;
}
