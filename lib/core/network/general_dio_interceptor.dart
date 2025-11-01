import 'dart:convert';
import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:mac_mobile/core/network/dio_factory.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';

import '../../app/dependency_injection.dart';
import '../../generated/assets.dart';
import '../../generated/locale_keys.g.dart';
import '../network/response_status_code.dart';
import '../utils/helpers/helper.dart';
import '../utils/local_storage/app_preferences.dart';
import '../utils/resources/resources.dart';

class GeneralInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = getIt<AppPreferences>().userPreferences.getUserToken ?? '';
    String language =
        (getIt<AppPreferences>().languagePreferences.getAppLanguage())
            .local()
            .languageCode;
    if (token.isNotEmpty) {
      options.headers.addAll({DioHeaders.authorization: 'Bearer $token'});
    }
    options.headers.addAll({DioHeaders.language: language});
    if (kDebugMode) {
      // print(_cURLRepresentation(options));
      // LoggerService().logDebug( message: _cURLRepresentation(options));
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    try {} catch (error) {
      // LoggerService().logCatchDebug(message: 'Catch Error', error: error, stackTrace: stacktrace);
    }
    return handler.next(response);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    try {
      if (err.response?.data['code'] ==
          ResponseStatusCode.unAuthenticated.value) {
        AppPreferences appPreferences = getIt<AppPreferences>();
        await appPreferences.userPreferences.logOutPref();
        Helper.instance.routerHelper.logoutWithoutApi();
        await Helper.instance.messageHelper.showErrorMessage(
            context: rootNavigatorKey.currentContext,
            message: LocaleKeys.messages_expiredSession.tr());
        rootNavigatorKey.currentContext!.go(RoutesPaths.loginRoute);
      } else if (err.response?.data['code'] ==
          ResponseStatusCode.oldVersion.value) {
        LoggerService().logDebug(message: 'Please update the app');
        showDialog(
            barrierDismissible: false,
            context: rootNavigatorKey.currentContext!,
            builder: (_) => PopScope(
                  canPop: false,
                  child: Dialog(
                    insetPadding: EdgeInsets.symmetric(
                        vertical: AppSizeH.s273, horizontal: AppSizeW.s50),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.all(AppSizeW.s20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Lottie.asset(Assets.lottieUpdate,
                              height: AppSizeH.s80, fit: BoxFit.fitHeight),
                          SizedBox(height: AppSizeH.s10),
                          Text(LocaleKeys.newVersion.tr()),
                          SizedBox(height: AppSizeH.s80),
                          ElevatedButton(
                              onPressed: () {
                                if (Platform.isIOS) {
                                  Helper.instance.routerHelper.openLinkWithBrowser(
                                      'https://apps.apple.com/iq/app/almansour-iraq/id6479215851');
                                } else if (Platform.isAndroid) {
                                  Helper.instance.routerHelper.openLinkWithBrowser(
                                      'https://play.google.com/store/apps/details?id=com.provision.com.maccar');
                                }
                              },
                              child: Text(LocaleKeys.update.tr()))
                        ],
                      ),
                    )),
                  ),
                ));
      }
    } catch (e) {}
    if (kDebugMode) {
      // print(_cURLRepresentation(err.requestOptions));
    }
    // print(_cURLRepresentation(err.requestOptions));

    return handler.next(err);
  }
}

String _cURLRepresentation(RequestOptions options) {
  List<String> components = ['curl -i'];
  if (options.method.toUpperCase() != 'GET') {
    components.add('-X ${options.method}');
  }

  options.headers.forEach((k, v) {
    if (k != 'Cookie') {
      components.add('-H "$k: $v"');
    }
  });

  if (options.data != null) {
    // FormData can't be JSON-serialized, so keep only their fields attributes
    if (options.data is FormData) {
      options.data = Map.fromEntries(options.data.fields);
    }
    final data = json.encode(options.data).replaceAll('"', '\\"');
    components.add('-d "$data"');
  }

  components.add('"${options.uri.toString()}"');

  return components.join(' \\\n\t');
}
