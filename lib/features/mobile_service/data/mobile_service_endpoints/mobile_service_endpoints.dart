class MobileServiceEndPoints {
  static const String starter = '/api/customers';
  static const String createMobileService = '$starter/mobile-service/store';
  static const String mobileService = '$starter/mobile-service';
  static const String cities = '$starter/utilities/cities/only-has-area';
  static const String areas = '$starter/utilities/areas/only-has-street';
  static const String streets = '$starter/utilities/streets';
  static const String availableAppointments = '$mobileService/get-available-appointment';
  static const String type = '$mobileService/types';
}