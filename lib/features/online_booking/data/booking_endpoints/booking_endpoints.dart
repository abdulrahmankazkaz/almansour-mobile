class BookingEndPoints {
  static const String starter = '/api/customers';
  static const String dealerships = '$starter/utilities/dealerships';
  static const String appointmentType = '$starter/appointments/types';
  static const String storeRegularAppointment = '$starter/appointments/store-regular';
  static const String storeOtherAppointment = '$starter/appointments/store-other';
  static const String getAppointments = '$starter/appointments';
  static const String uploadImage = '$starter/image/upload';
  static const String availableAppointment = '$starter/appointments/get-available-appointment';
  static const String initialPayment = '$starter/appointments/initiate-payment';
  static const String approveUpdate = '$starter/appointments/approve-change-time';
  static const String getOtherPaymentDetails = '$starter/appointments/get-bill-details-other';
  static const String getRegularPaymentDetails = '$starter/appointments/get-bill-details-regular';
}
