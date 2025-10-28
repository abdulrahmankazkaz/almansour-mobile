class AppointmentPaymentParameters {
  final int? id;
  final int paymentMethodId;
  final int? dealershipId;
  final int? serviceOfferId;
  final String? appointmentTime;

  AppointmentPaymentParameters({
    this.id,
    this.dealershipId,
    this.serviceOfferId,
    this.appointmentTime,
    required this.paymentMethodId,
  });

  Map<String, dynamic> toJson() => {
        if (id != null) "id": id,
        "payment_method_id": paymentMethodId,
        if (appointmentTime != null) "appointment_time": appointmentTime,
        if (appointmentTime != null) "dealership_id": dealershipId,
        if (appointmentTime != null) "service_offer_id": serviceOfferId
      };
}
