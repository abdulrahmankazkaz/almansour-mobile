class CustomerCarParameters {
  final int carNameId;
  final String vinNumber;
  final String modelYear;
  final int odometer;
  final String licenseExpireDate;
  final String firstLicenseImage;
  final String secondLicenseImage;

  CustomerCarParameters(
      {required this.carNameId,
      required this.vinNumber,
      required this.modelYear,
      required this.odometer,
      required this.licenseExpireDate,
      required this.firstLicenseImage,
      required this.secondLicenseImage});

  Map<String, dynamic> toJson() => {
        "car_name_id": carNameId,
        "vin_number": vinNumber,
        "year": modelYear,
        "odometer": odometer,
        "license_expire": licenseExpireDate,
        "first_license_image": firstLicenseImage,
        "second_license_image": secondLicenseImage
      };
}
