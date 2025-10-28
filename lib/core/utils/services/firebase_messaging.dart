import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/dependency_injection.dart';
import '../../../features/cart/presentation/bloc/order_bloc/order_bloc.dart';
import '../../../features/customer_car/presentation/bloc/customer_car_bloc/customer_car_bloc.dart';
import '../../../features/mobile_service/presentation/bloc/mobile_service_bloc/mobile_service_bloc.dart';
import '../../../features/notification/domain/use_cases/update_fcm_token.dart';
import '../../../features/online_booking/presentation/bloc/appointment_bloc/appointment_bloc.dart';
import '../../router/routes_manager.dart';
import '../helpers/helper.dart';
import '../helpers/logger_helper.dart';
import '../language/language_manager.dart';
import '../local_storage/app_preferences.dart';
import 'locale_notification_service.dart';

class NotificationService {
  NotificationService();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  LocaleNotificationService localeNotificationService =
      LocaleNotificationService();

  Future<void> init() async {
    await _messaging.requestPermission();
    await localeNotificationService.initialize();

    await _initializeTokenWithRetry();
    subscribeToTopics();
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _messaging.onTokenRefresh.listen((newToken) {
      getIt<UpdateFCMToken>().execute(newToken);
    });
  }

  Future<void> _initializeTokenWithRetry({int retries = 3}) async {
    for (int attempt = 0; attempt < retries; attempt++) {
      try {
        String? token = await _messaging.getToken();
        await getIt<AppPreferences>().userPreferences.setFcmToken(token);
        LoggerService().logDebug(message: 'FCM Token: $token');
        // print('FCM Token: $token');
        return; // Exit if successful
      } catch (e) {
        if (attempt < retries - 1) {
          await Future.delayed(
              const Duration(seconds: 2)); // Wait before retrying
        } else {
          // print(e);
          LoggerService().logCatchDebug(message: 'Error getting FCM Token: $e');
        }
      }
    }
  }

  Future<void> subscribeToTopics() async {
    AppLanguage appLanguage =
        getIt<AppPreferences>().languagePreferences.getAppLanguage();

    if (Platform.isIOS) {
      String? apnsToken = await _getAPNSTokenWithRetry();
      if (apnsToken != null) {
        await _subscribeBasedOnLanguage(appLanguage);

        await _messaging
            .subscribeToTopic('notifications');
            // .then((value) => print('Subscribed to notifications successfully'))
            // .catchError((e) => print('error $e'));
        await _messaging
            .subscribeToTopic('t');
            // .then((value) => print('Subscribed to t successfully'))
            // .catchError((e) => print('error $e'));
      }
    } else {
      await _subscribeBasedOnLanguage(appLanguage);
      await _messaging
          .subscribeToTopic('notifications');
        //   .then((value) => print('Subscribed to notifications successfully'))
        //   .catchError((e) => print('error $e'));
      await _messaging
          .subscribeToTopic('t');
        //   .then((value) => print('Subscribed to t successfully'))
        //   .catchError((e) => print('error $e'));
    }
  }

  Future<String?> _getAPNSTokenWithRetry({int retries = 3}) async {
    for (int attempt = 0; attempt < retries; attempt++) {
      try {
        String? apnsToken = await _messaging.getAPNSToken();
        LoggerService().logDebug(message: 'apnsToken: $apnsToken');
        return apnsToken;
      } catch (e) {
        LoggerService().logCatchDebug(message: 'Error getting APNS Token: $e');
      }
    }
    return null;
  }

  Future<void> _subscribeBasedOnLanguage(AppLanguage appLanguage) async {
    try {
      if (appLanguage == AppLanguage.arabic) {
        await subscribeToArabicTopic();
        await unsubscribeToEnglishTopic();
      } else {
        await subscribeToEnglishTopic();
        await unsubscribeToArabicTopic();
      }
    //   print('Subscribed to topics successfully');
      LoggerService().logDebug(message: 'Subscribed to topics successfully');
    } catch (e) {
      LoggerService().logCatchDebug(message: e.toString());
    }
  }

  Future<void> subscribeToArabicTopic() async {
    await _messaging.subscribeToTopic('news-ar');
    await _messaging.subscribeToTopic('offers-ar');
    await _messaging.subscribeToTopic('new-car-ar');
    await _messaging.subscribeToTopic('global-ar');
  }

  Future<void> subscribeToEnglishTopic() async {
    await _messaging.subscribeToTopic('news-en');
    await _messaging.subscribeToTopic('offers-en');
    await _messaging.subscribeToTopic('new-car-en');
    await _messaging.subscribeToTopic('global-en');
  }

  Future<void> unsubscribeToArabicTopic() async {
    await _messaging.unsubscribeFromTopic('news-ar');
    await _messaging.unsubscribeFromTopic('offers-ar');
    await _messaging.unsubscribeFromTopic('new-car-ar');
    await _messaging.unsubscribeFromTopic('global-ar');
  }

  Future<void> unsubscribeToEnglishTopic() async {
    await _messaging.unsubscribeFromTopic('news-en');
    await _messaging.unsubscribeFromTopic('offers-en');
    await _messaging.unsubscribeFromTopic('new-car-en');
    await _messaging.unsubscribeFromTopic('global-en');
  }

  Future<void> listenToNotification() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      LoggerService().logDebug(
          message:
              'Got a message whilst in the foreground! ${message.toMap()}');
    //   print('Got a message whilst in the foreground! ${message.toMap()}');
      if (message.data.isNotEmpty) {
        print('Message contained data: ${message.data.toString()}');
        switch (message.data['type_id']) {
          case '5':
            rootNavigatorKey.currentContext
                ?.read<CustomerCarBloc>()
                .add(const CustomerCarEvent.getCustomerCar());
          case '6':
            rootNavigatorKey.currentContext
                ?.read<MobileServiceBloc>()
                .add(const MobileServiceEvent.get());
          case '7':
            rootNavigatorKey.currentContext
                ?.read<AppointmentBloc>()
                .add(const AppointmentEvent.getAppointments(true));
          case '8':
            rootNavigatorKey.currentContext
                ?.read<OrderBloc>()
                .add(const OrderEvent.getOrders(true));
        }
        await localeNotificationService.showNotification(
            id: 1,
            title: message.data['title'],
            body: message.data['body'],
            image: message.data['image'] == '' ? null : message.data['image']);
      }
      // if (message.notification != null) {
      //   print('Message also contained a notification: ${message.notification}');
      //   LoggerService().logDebug(
      //       message:
      //           'Message also contained a notification: ${message.notification}');
      //   await localeNotificationService.showNotification(
      //       id: 1,
      //       title: message.notification?.title ?? '',
      //       body: message.notification?.body ?? '',
      //       image: message.notification?.android?.imageUrl ??
      //           message.notification?.apple?.imageUrl);
      // }
    });
  }

  void listenToTapNotification() {
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      switch (event.data['type_id']) {
        case '1':
        // rootNavigatorKey.currentContext?.push(RoutesPaths.news, extra: event.data['model_id']);
        case '2':
          rootNavigatorKey.currentContext?.push(RoutesPaths.promotionDetails,
              extra: event.data['model_id']);
        case '3':
          rootNavigatorKey.currentContext?.push(RoutesPaths.carDetailsRoute,
              extra: int.tryParse(event.data['model_id']));
        case '4':
          rootNavigatorKey.currentContext?.push(RoutesPaths.notification);
        case '5':
          rootNavigatorKey.currentContext?.push(RoutesPaths.carRoute);
        case '6':
          rootNavigatorKey.currentContext
              ?.push(RoutesPaths.orderRoute, extra: 2);
        case '7':
          rootNavigatorKey.currentContext
              ?.push(RoutesPaths.orderRoute, extra: 1);
        case '8':
          rootNavigatorKey.currentContext
              ?.push(RoutesPaths.orderRoute, extra: 0);
        case '9':
          Helper.instance.routerHelper.openLinkWithBrowser(event.data['url']);
      }
    });
  }
}
