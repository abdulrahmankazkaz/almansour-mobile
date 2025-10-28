class ApproveUpdatedAppointmentParameters {
  final int id;
  final bool approve;

  ApproveUpdatedAppointmentParameters(
      {required this.id,
        required this.approve,
      });

  Map<String, dynamic> toJson() => {
    "id": id,
    "accept": approve
  };
}
