class Constants {
  //region urls

  static const String baseUrl = String.fromEnvironment('BASE_URL',defaultValue: 'https://api.mac-iq.net');
  static const String englishTermsUrl = 'https://privacy.mac-iq.net/';
  static const String arabicTermsUrl = 'https://privacy.mac-iq.net/ar.html';
  static const String refreshTokenUrl = '$baseUrl/api/customers/refresh-token';
  //endregion


  static const String countryCode = '+964';
  static const String localizationAssetsPath = "assets/translations";
  static const String sentryDSN = 'https://67b24a008d1293fbb2d54dea96892b79@o4508074474668032.ingest.us.sentry.io/4508160162267136';
}
