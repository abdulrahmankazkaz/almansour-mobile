class QuickServiceParameters {
  final int dealershipId;
  final int typeId;
  final String appointmentTime;

  QuickServiceParameters(
      {required this.dealershipId,
      required this.typeId,
      required this.appointmentTime});

  Map<String, dynamic> toJson() => {
        "dealership_id": dealershipId,
        "appointment_time": appointmentTime,
        "type_id": typeId
      };
}
