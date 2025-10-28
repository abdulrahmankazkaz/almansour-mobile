class AvailableAppointmentParameters {
  final int typeId;
  final int dealershipId;

  AvailableAppointmentParameters(
      {required this.dealershipId,
        required this.typeId,
      });

  Map<String, dynamic> toJson() => {
    "type_id": typeId,
    "dealership_id": dealershipId
  };
}
