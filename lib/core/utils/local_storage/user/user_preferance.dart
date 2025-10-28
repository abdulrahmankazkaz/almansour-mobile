import 'dart:convert';

import 'package:mac_mobile/core/utils/language/language_manager.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/features/cart/entities/cart_item/cart_item.dart';
import 'package:mac_mobile/features/main/entities/config_entity/config_entity.dart';
import 'package:mac_mobile/features/main/entities/currency_entity/currency_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../features/profile/entities/user.dart';

class UserPreferences {
  late final SharedPreferences sharedPreferences;

  String prefsTokenKey = 'token';
  String prefsRefreshTokenKey = 'refresh_token';
  String prefsFCMTokenKey = 'FCM_token';
  String prefsUserKey = 'user';
  String prefsCartKey = 'cart';
  String prefsUserNumber = 'userNumber';
  String prefsVisitorUser = 'visitorUser';
  String prefsNeedToVerifyUser = 'needToVerifyUser';
  String prefsConfig = 'config';
  String prefsNavigateRoute = 'navigateRoute';
  String prefsAppVersion = 'appVersion';
  String prefsAppPopupLink = 'popupLink';

  UserPreferences(this.sharedPreferences);

  Future<void> setUserTokens(String token) async =>
      await sharedPreferences.setString(prefsTokenKey, token);

  Future<void> setPopupLink(String link) async =>
      await sharedPreferences.setString(prefsAppPopupLink, link);

  Future<void> setConfig(ConfigEntity config) async => await sharedPreferences
      .setString(prefsConfig, jsonEncode(config.toJson()));

  Future<void> setNavigateRoute(String route) async =>
      await sharedPreferences.setString(prefsNavigateRoute, route);

  Future<void> setAppVersion(String version) async =>
      await sharedPreferences.setString(prefsAppVersion, version);

  String? get getUserToken {
    final String storedToken = sharedPreferences.getString(prefsTokenKey) ?? '';
    if (storedToken.isNotEmpty) {
      return storedToken;
    } else {
      // If no token is stored, return an empty AuthTokens object or handle accordingly
      return null;
    }
  }

  String get getPopupLink {
    return sharedPreferences.getString(prefsAppPopupLink) ?? '';
  }

  Future<void> setUserAsVisitor() async =>
      await sharedPreferences.setBool(prefsVisitorUser, true);

  Future<void> setNeedToVerifyUser() async =>
      await sharedPreferences.setBool(prefsNeedToVerifyUser, true);

  Future<void> saveUserData(userData) async => await sharedPreferences
      .setString(prefsUserKey, jsonEncode(userData.toJson()));

  Future<void> saveUserCart(List<CartItem> userCart) async {
    await sharedPreferences
        .setStringList(
        prefsCartKey, userCart.map((e) => jsonEncode(e.toJson())).toList());
  }

  User? get getUserData {
    final jsonString = sharedPreferences.getString(prefsUserKey) ?? '{}';
    if (jsonString == '{}') return null;
    return User.fromJson(jsonDecode(jsonString));
  }

  ConfigEntity? get getConfig {
    final jsonString = sharedPreferences.getString(prefsConfig) ?? '{}';
    if (jsonString == '{}') return null;
    return ConfigEntity.fromJson(jsonDecode(jsonString));
  }

  String get getNavigatorRoute {
    return sharedPreferences.getString(prefsNavigateRoute) ?? '';
  }

  String get appVersion {
    return sharedPreferences.getString(prefsAppVersion) ?? '';
  }

  String get getCurrency {
    CurrencyEntity? currency = getConfig?.currency;
    if (getIt<AppPreferences>().languagePreferences.getAppLanguage() ==
        AppLanguage.english) {
      return currency?.en ?? '';
    } else {
      return currency?.ar ?? '';
    }
  }

  List<CartItem> get getUserCart {
    final jsonList = sharedPreferences.getStringList(prefsCartKey)?? [];
    if(jsonList.isEmpty) {
      return [];
    } else{
      List<CartItem> cart = jsonList.map((e) => CartItem.fromJson(jsonDecode(e))).toList();
      return cart;
    }
  }

  String getUserNumber() {
    return sharedPreferences.getString(prefsUserNumber) ?? '';
  }

  String getFCMToken() {
    return sharedPreferences.getString(prefsFCMTokenKey) ?? '';
  }

  bool getIsUserVisitor() {
    return sharedPreferences.getBool(prefsVisitorUser) ?? false;
  }

  bool getNeedToVerifyUser() {
    return sharedPreferences.getBool(prefsNeedToVerifyUser) ?? false;
  }

  Future<bool> removeUserToken() {
    return sharedPreferences.remove(prefsTokenKey);
  }

  Future<bool> removeIsUserVisitor() {
    return sharedPreferences.remove(prefsVisitorUser);
  }

  Future<bool> removeNeedToVerifyUser() {
    return sharedPreferences.remove(prefsNeedToVerifyUser);
  }

  Future<bool> removeUserRefreshToken() {
    return sharedPreferences.remove(prefsRefreshTokenKey);
  }

  Future<bool> removeUserData() {
    return sharedPreferences.remove(prefsUserKey);
  }

  Future<bool> removeUserCart() {
    return sharedPreferences.remove(prefsCartKey);
  }

  Future<bool> removeUserNumber() {
    return sharedPreferences.remove(prefsUserNumber);
  }
  Future<bool> removePopupLink() {
    return sharedPreferences.remove(prefsAppPopupLink);
  }

  Future<void> saveUserNumber(userNumber) async {
    await sharedPreferences.setString(prefsUserNumber, userNumber);
  }

  Future<void> setFcmToken(fcm) async {
    await sharedPreferences.setString(prefsFCMTokenKey, fcm);
  }

  bool isUserLoggedIn() {
    return getUserToken?.isNotEmpty ?? false;
  }

  Future<void> logOutPref() async {
    await removeUserToken();
    await removeUserRefreshToken();
    await removeUserData();
    await removeUserCart();
    await removeIsUserVisitor();
    await removeUserNumber();
    await removePopupLink();
  }
}
