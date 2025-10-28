class AppointmentParameters {
  final String appointmentTime;
  final int typeId;
  final int dealershipId;
  final int? serviceOfferId;
  final int? paymentMethodId;

  AppointmentParameters(
      {required this.dealershipId,
      required this.appointmentTime,
      required this.typeId,
      this.serviceOfferId,
      this.paymentMethodId});

  Map<String, dynamic> toJson() => {
        "dealership_id": dealershipId,
        "type_id": typeId,
        "appointment_time": appointmentTime,
        if (serviceOfferId != null) "service_offer_id": serviceOfferId,
        if (paymentMethodId != null) "payment_method_id": paymentMethodId
      };
}
