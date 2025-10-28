import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mac_mobile/core/utils/helpers/logger_helper.dart';
import 'package:path_provider/path_provider.dart';

class LocaleNotificationService {
  LocaleNotificationService();

  final _localeNotificationService = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsDarwin =
    DarwinInitializationSettings(
        requestSoundPermission: true,
        requestBadgePermission: true,
        requestAlertPermission: true);

    const InitializationSettings settings = InitializationSettings(
        android: androidInitializationSettings, iOS: initializationSettingsDarwin);

    await _localeNotificationService.initialize(settings);

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'channel_id', // ID should be the same as in `showNotification`
      'notification_channel',
      description: 'Almansour notification',
      importance: Importance.high,
      playSound: true,
      showBadge: true,
    );

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  Future<String?> _downloadAndSaveFile(String url, String fileName) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';
      print('Downloading image to: $filePath');
      LoggerService().logDebug(message: 'Downloading image to: $filePath');

      final response = await Dio().download(url, filePath);

      if (response.statusCode == 200) {
        print('Image downloaded successfully: $filePath');
        LoggerService()
            .logDebug(message: 'Image downloaded successfully: $filePath');
        return filePath;
      }
    } catch (e) {
      print('Error downloading image:: $e');

      LoggerService().logCatchDebug(message: 'Error downloading image: $e');
    }
    return null;
  }

  // Future<NotificationDetails> _notificationDetails({String? image}) async {
  //   BigPictureStyleInformation? bigPictureStyleInformation;
  //   String? imagePath;
  //
  //   if (image != null) {
  //     imagePath = await _downloadAndSaveFile(image, 'notification_image.jpg');
  //
  //     if (imagePath != null && File(imagePath).existsSync()) {
  //       print('Setting image for notification: $imagePath');
  //       LoggerService()
  //           .logDebug(message: 'Setting image for notification: $imagePath');
  //       bigPictureStyleInformation = BigPictureStyleInformation(
  //         FilePathAndroidBitmap(imagePath),
  //         largeIcon: FilePathAndroidBitmap(imagePath),
  //       );
  //     } else {
  //       print('Image file not found or not accessible.');
  //       LoggerService()
  //           .logDebug(message: 'Image file not found or not accessible.');
  //     }
  //   }
  //
  //   AndroidNotificationDetails androidNotificationDetails =
  //       AndroidNotificationDetails(
  //     'channel_id',
  //     'channel_name',
  //     channelDescription: 'description',
  //     importance: Importance.max,
  //     priority: Priority.max,
  //     playSound: true,
  //     styleInformation: bigPictureStyleInformation,
  //   );
  //
  //   DarwinNotificationDetails iosNotificationDetails =
  //       DarwinNotificationDetails(
  //     attachments: imagePath != null && File(imagePath).existsSync()
  //         ? [DarwinNotificationAttachment(imagePath)]
  //         : null,
  //   );
  //
  //   return NotificationDetails(
  //       android: androidNotificationDetails, iOS: iosNotificationDetails);
  // }

  Future<NotificationDetails> _notificationDetails({String? image}) async {
    BigPictureStyleInformation? bigPictureStyleInformation;
    String? imagePath;

    if (image != null) {
      imagePath = await _downloadAndSaveFile(image, 'notification_image.jpg');

      if (imagePath != null && File(imagePath).existsSync()) {
        bigPictureStyleInformation = BigPictureStyleInformation(
          FilePathAndroidBitmap(imagePath),
          largeIcon: FilePathAndroidBitmap(imagePath),
        );
      }
    }

    AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails(
      'channel_id',
      'notification_channel',
      channelDescription: 'Almansour notification',
      importance: Importance.max, // Critical for heads-up
      priority: Priority.high, // Ensures heads-up notification
      playSound: true,
      enableVibration: true,
      fullScreenIntent: true, // Optional: Makes it appear in heads-up
      styleInformation: bigPictureStyleInformation,
    );

    // iOS Notification Details
    DarwinNotificationDetails iosNotificationDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      attachments: imagePath != null && File(imagePath).existsSync()
          ? [DarwinNotificationAttachment(imagePath)]
          : null,
    );

    return NotificationDetails(android: androidNotificationDetails, iOS: iosNotificationDetails);
  }


  Future<void> showNotification(
      {required int id,
      required String title,
      required String body,
      String? image}) async {
    await _localeNotificationService.show(
        id, title, body, await _notificationDetails(image: image));
  }
}
