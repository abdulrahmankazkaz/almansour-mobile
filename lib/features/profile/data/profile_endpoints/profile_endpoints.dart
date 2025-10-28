class ProfileEndPoints {
  static const String starter = '/api/customers';
  static const String profile = '$starter/profile';
  static const String updateProfile = '$starter/profile/update';
  static const String genders = '$starter/utilities/enums/gender';
  static const String cities = '$starter/utilities/cities';
  static const String deactivateAccount = '$profile/deactivate';
  static const String deleteAccount = '$profile/delete';
}
