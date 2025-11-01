import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/constant.dart';
import '../utils/helpers/helper.dart';
import '../utils/local_storage/app_preferences.dart';
import 'firebase_performance_interceptor.dart';
import 'general_dio_interceptor.dart';

class DioHeaders {
  static const String applicationJson = 'application/json';
  static const String multipartJson = 'multipart/form-data';
  static const String contentType = 'content-type';
  static const String language = 'lang';
  static const String accept = 'accept';
  static const String authorization = 'authorization';
  static const String version = 'version';

  static Map<String, String> get headers => {
        DioHeaders.contentType: DioHeaders.applicationJson,
        DioHeaders.accept: DioHeaders.applicationJson,
      };
}

// @module
class DioFactory {
  final AppPreferences _appPreferences;

  // @FactoryMethod(preResolve: true)
  DioFactory(this._appPreferences);

  // @singleton
  Future<Dio> getDio() async {
    Dio dio = Dio();
    Duration timeOut = const Duration(seconds: 30);
    String language =
        (_appPreferences.languagePreferences.getAppLanguage())
            .local()
            .languageCode;
    String token =
        _appPreferences.userPreferences.getUserToken ?? '';
    String version = await Helper.instance.functionsHelper.getReleaseVersion();
    Map<String, String> headers = DioHeaders.headers
      ..addAll({
        DioHeaders.version: version,
        DioHeaders.language: language,
        if (token.isNotEmpty) DioHeaders.authorization: 'Bearer $token',
      });
    dio.options = BaseOptions(
      baseUrl: Constants.baseUrl,
      connectTimeout: timeOut,
      receiveTimeout: timeOut,
      sendTimeout: timeOut,
      headers: headers,
    );
    // dio.interceptors.add(RefreshTokenInterceptor());
    dio.interceptors.add(GeneralInterceptor());
    dio.interceptors.add(FirebasePerformanceInterceptor());
    if (!kReleaseMode) {
        dio.interceptors.add(PrettyDioLogger(
            requestHeader: true,
            responseHeader: false,
            requestBody: true,
            request: true,
            responseBody: true,
      ));
      // dio.interceptors.add(CurlLoggerDioInterceptor(
      //   convertFormData: true,
      // ));
    }
    return dio;
  }
}
