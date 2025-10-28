class OrderEndPoints {
  static const String starter = '/api/customers/orders';
  static const String orderDetails = '$starter/details';
  static const String sendOrder = '$starter/store';
  static const String payOrder = '$starter/pay';
  static const String cancelOrder = '$starter/cancel';
  static const String ePaymentTerms = '/api/customers/utilities/e-payment-terms';
}
