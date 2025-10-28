class BookingCarParameters {
  final int carId;
  final bool isInstallment;
  final int paymentMethodId;
  final int? downPayment;

  BookingCarParameters(
      {required this.carId,
        required this.isInstallment,
        required this.paymentMethodId,
        this.downPayment
      });

  Map<String, dynamic> toJson() => {
    "car_id": carId,
    "as_installment": isInstallment,
    "payment_method_id": paymentMethodId,
    if(downPayment != null)
    "down_payment":downPayment
  };
}
