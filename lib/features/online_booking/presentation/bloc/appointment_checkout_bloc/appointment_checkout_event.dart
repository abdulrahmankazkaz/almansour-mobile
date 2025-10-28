part of 'appointment_checkout_bloc.dart';

@freezed
class AppointmentCheckoutEvent with _$AppointmentCheckoutEvent {
  const factory AppointmentCheckoutEvent.started() = _Started;
  const factory AppointmentCheckoutEvent.checkout(int paymentMethodId) = _Checkout;
  const factory AppointmentCheckoutEvent.getPaymentDetails(int paymentMethodId) = _GetPaymentDetails;
}
