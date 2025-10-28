class MobileServiceParameters {
  final int streetId;
  final String appointmentTime;
  final String? lng;
  final String? lat;
  final int typeId;

  MobileServiceParameters(
      {required this.streetId,
      required this.appointmentTime,
      this.lng,
      this.lat,
      required this.typeId});

  Map<String, dynamic> toJson() => {
        "street_id": streetId,
        "appointment_time": appointmentTime,
        "longitude": lng,
        "latitude": lat,
        "type_id": typeId
      };
}
