class CheckCarParameters{
  final String vinNumber;
  final int brandId;

  CheckCarParameters({
    required this.vinNumber,
    required this.brandId
});

  Map<String, dynamic> toJson() => {
    "vin_number": vinNumber,
    "brand_id": brandId,
  };
}