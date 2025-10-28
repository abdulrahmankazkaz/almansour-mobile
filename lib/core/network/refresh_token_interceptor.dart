// import 'dart:convert';
//
// import 'package:dio/dio.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
// import 'package:mac_mobile/features/auth/entities/auth_verify/auth_verify.dart';
//
// import '../../app/dependency_injection.dart';
// import '../../features/profile/entities/user.dart';
// import '../../generated/locale_keys.g.dart';
// import '../constants/constant.dart';
// import '../network/response_status_code.dart';
// import '../utils/helpers/helper.dart';
// import '../utils/local_storage/app_preferences.dart';
// import '../utils/resources/resources.dart';
// import 'dio_factory.dart';
//
// class RefreshTokenInterceptor extends Interceptor {
//   bool isRefreshCalled = false;
//
//   @override
//   Future<void> onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     // logNetwork(
//     //     message:
//     //         'HTTPs method => ${options.method} \n'
//     //             'Request => ${options.baseUrl}${options.path}${options.queryParameters} \n'
//     //             'Header  => ${options.headers}',
//     //     level: LogLevel.info);
//     // print(_cURLRepresentation(options));
//     if (kDebugMode) {
//       print(_cURLRepresentation(options));
//     }
//     super.onRequest(options, handler);
//   }
//
//   @override
//   Future<void> onResponse(
//       Response response, ResponseInterceptorHandler handler) async {
//     try {
//       // logNetwork(
//       //     message:
//       //     'Response => StatusCode: ${response.statusCode} \n'
//       //         'Response => Body: ${response.data} \n'
//       //         'Response => Header: ${response.headers.map}',
//       //     level: LogLevel.info);
//       // if (kDebugMode) {
//       //   log(response.requestOptions.data.toString());
//       // }
//     } catch (error) {
//       // logCatchDebug(message: 'Catch Error',error: error,stackTrace: stacktrace);
//     }
//     return handler.next(response);
//   }
//
//   @override
//   Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
//     try {
//       if (err.response?.data['code'] == ResponseStatusCode.unAuthenticated.value) {
//         LoggerService().logDebug(message: 'unAuthenticated status');
//         var tokens = getIt<AppPreferences>().userPreferences.getUserTokens;
//         Dio dio = Dio();
//         dio.options.headers = DioHeaders.headers;
//         if (!isRefreshCalled &&
//             (err.requestOptions.headers[DioHeaders.authorization]) ==
//                 ("Bearer ${tokens?.accessToken ?? ''}")) {
//           isRefreshCalled = true;
//           try {
//             final response = await dio.post(Constants.refreshTokenUrl,
//                 data: jsonEncode({"refresh_token": tokens?.refreshToken}));
//             if (response.statusCode == 200) {
//               AuthVerify newTokens = AuthVerify.fromJson(response.data['data']);
//               LoggerService().logDebug(message: 'Tokens refreshed successfully');
//               await getIt<AppPreferences>().userPreferences.setUserTokens(newTokens.tokens);
//               await getIt<AppPreferences>().userPreferences.saveUserData(User.fromJson(response.data['data']['customer']));
//               err.requestOptions.headers["Authorization"] = "Bearer ${newTokens.tokens.accessToken}";
//               isRefreshCalled = false;
//               final opts = Options(method: err.requestOptions.method, headers: err.requestOptions.headers);
//               final cloneReq = await dio.request(
//                   err.requestOptions.baseUrl + err.requestOptions.path,
//                   options: opts,
//                   data: err.requestOptions.data,
//                   queryParameters: err.requestOptions.queryParameters);
//               return handler.resolve(cloneReq);
//             } else {
//               LoggerService().logDebug(message: 'Failed to refresh tokens, status code: ${response.statusCode}');
//             }
//           }
//           on DioException catch(err){
//             if (err.response?.data['code'] ==
//                 ResponseStatusCode.refreshTokenExpired.value) {
//               Helper.instance.messageHelper.showErrorMessage(context: rootNavigatorKey.currentContext,message: LocaleKeys.messages_expiredSession.tr());
//               AppPreferences appPreferences = getIt<AppPreferences>();
//               await appPreferences.userPreferences.logOutPref();
//               rootNavigatorKey.currentContext!.go(RoutesPaths.loginRoute);
//             }
//             else if (err.response?.data['code'] ==
//                 ResponseStatusCode.oldVersion.value) {
//               showDialog(
//                   barrierDismissible: false,
//                   context: rootNavigatorKey.currentContext!,
//                   builder: (_) => Dialog(
//                     insetPadding: EdgeInsets.symmetric(
//                         vertical: AppSizeH.s290, horizontal: AppSizeW.s50),
//                     child: Center(child: Text(LocaleKeys.newVersion.tr())),
//                   ));
//             }
//           }
//           catch (e) {
//             LoggerService().logDebug(message: 'Error refreshing tokens: $e');
//             isRefreshCalled = false;
//             return handler.next(err);
//           }
//         } else if (isRefreshCalled) {
//           // while (isRefreshCalled &&
//           //     (getIt<AppPreferences>().userPreferences.getUserTokens?.accessToken.isNotEmpty ?? false)) {
//           //   await Future.delayed(const Duration(seconds: 3));
//           // }
//           if ((getIt<AppPreferences>().userPreferences.getUserTokens?.accessToken.isNotEmpty ?? false)) {
//             err.requestOptions.headers["Authorization"] = "Bearer ${getIt<AppPreferences>().userPreferences.getUserTokens?.accessToken}";
//             final opts = Options(method: err.requestOptions.method, headers: err.requestOptions.headers);
//             final cloneReq = await dio.request(
//                 err.requestOptions.baseUrl + err.requestOptions.path,
//                 options: opts,
//                 data: err.requestOptions.data,
//                 queryParameters: err.requestOptions.queryParameters);
//             return handler.resolve(cloneReq);
//           }
//         } else {
//           Helper.instance.routerHelper.logoutWithoutApi();
//           Helper.instance.messageHelper.showErrorMessage(context: rootNavigatorKey.currentContext,message: LocaleKeys.messages_expiredSession.tr());
//           rootNavigatorKey.currentContext!.go(RoutesPaths.loginRoute);
//           LoggerService().logCatchDebug(message: 'refresh token is not called probably');
//         }
//       }
//     } catch (e) {
//       LoggerService().logDebug(message: 'Unexpected error: $e');
//     }
//     return handler.next(err);
//   }
//
//
//   String _cURLRepresentation(RequestOptions options) {
//     List<String> components = ['curl -i'];
//     if (options.method.toUpperCase() != 'GET') {
//       components.add('-X ${options.method}');
//     }
//
//     options.headers.forEach((k, v) {
//       if (k != 'Cookie') {
//         components.add('-H "$k: $v"');
//       }
//     });
//
//     if (options.data != null) {
//       // FormData can't be JSON-serialized, so keep only their fields attributes
//       if (options.data is FormData) {
//         options.data = Map.fromEntries(options.data.fields);
//       }
//       final data = json.encode(options.data).replaceAll('"', '\\"');
//       components.add('-d "$data"');
//     }
//
//     components.add('"${options.uri.toString()}"');
//
//     return components.join(' \\\n\t');
//   }
//
// }
