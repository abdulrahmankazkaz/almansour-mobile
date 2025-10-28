class OdometerParameters {
  final int id;
  final int odometer;


  OdometerParameters(
      {required this.id,
        required this.odometer,
      });

  Map<String, dynamic> toJson() => {
    "id": id,
    "odometer": odometer
  };
}
