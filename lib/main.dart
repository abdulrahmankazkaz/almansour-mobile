import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'app/app.dart';
import 'app/bloc_observer.dart';
import 'app/dependency_injection.dart';
import 'core/constants/constant.dart';
import 'core/utils/helpers/helper.dart';
import 'core/utils/language/language_manager.dart';
import 'core/utils/local_storage/app_preferences.dart';
import 'core/utils/services/firebase_messaging.dart';
import 'firebase_options.dart';
import 'generated/codegen_loader.g.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {}

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await EasyLocalization.ensureInitialized();
    await initAppModule();

    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Bloc.observer = MyBlocObserver();

    // Only enable Crashlytics in release
    if (kReleaseMode) {
      FlutterError.onError = (FlutterErrorDetails details) async {
        if (!_isIgnoredError(details.exception)) {
         await FirebaseCrashlytics.instance.recordFlutterError(details);
        }
      };
    }

    runApp(EasyLocalization(
      supportedLocales: AppLanguage.supportedLocales,
      path: Constants.localizationAssetsPath,
      assetLoader: const CodegenLoader(),
      fallbackLocale: AppLanguage.fallbackLocale,
      child: const MyApp(),
    ));

    // Post-frame callback
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final notificationService = NotificationService();
      await notificationService.init();
      await notificationService.listenToNotification();
      notificationService.listenToTapNotification();

      final version = await Helper.instance.functionsHelper.getReleaseVersion();
      await getIt<AppPreferences>().userPreferences.setAppVersion(version);
    });

  }, (error, stackTrace) {
    if (kReleaseMode && !_isIgnoredError(error)) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
    }
  });
}

bool _isIgnoredError(dynamic error) {
  final message = error.toString();
  return message.contains('503') ||
      message.contains('HTTP Client Error with status code: 503');
}
