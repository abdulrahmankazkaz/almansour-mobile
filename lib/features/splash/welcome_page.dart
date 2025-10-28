import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../app/dependency_injection.dart';
import '../../core/router/routes_manager.dart';
import '../../core/utils/helpers/helper.dart';
import '../../core/utils/language/language_manager.dart';
import '../../core/utils/local_storage/app_preferences.dart';
import '../../core/utils/services/firebase_messaging.dart';
import '../../generated/assets.dart';
import '../../generated/locale_keys.g.dart';
import '../../widgets/custom_containers/screen_container.dart';
import '../../widgets/dialog/confirm_exit_dialog.dart';
import '../../widgets/text_fields/localized_font_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  NotificationService notificationService = NotificationService();

  Future<bool> _onExitConfirmation() async {
    return await showDialog(
      context: context,
      builder: (context) => ConfirmExitDialog(),
    ) ??
        false;
  }

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.getInitialMessage().then(
          (remoteMessage) {
        if (remoteMessage != null) {
          switch (remoteMessage.data['type_id']) {
          //todo replace with offer
          // case '1':
          //   rootNavigatorKey.currentContext?.push(RoutesPaths.news, extra: remoteMessage.data['model_id']);
            case '2':
              rootNavigatorKey.currentContext?.push(RoutesPaths.promotionDetails, extra: remoteMessage.data['model_id']);
            case '3':
              rootNavigatorKey.currentContext?.push(RoutesPaths.carDetailsRoute, extra: int.tryParse(remoteMessage.data['model_id']));
            case '4':
              rootNavigatorKey.currentContext?.push(RoutesPaths.notification);
            case '5':
              rootNavigatorKey.currentContext?.push(RoutesPaths.carRoute);
            case '6':
              rootNavigatorKey.currentContext?.push(RoutesPaths.orderRoute, extra: 1);
            case '7':
              rootNavigatorKey.currentContext?.push(RoutesPaths.orderRoute, extra: 0);
            case '8':
              rootNavigatorKey.currentContext?.push(RoutesPaths.orderRoute, extra: 3);
            case '9':
              Helper.instance.routerHelper.openLinkWithBrowser(remoteMessage.data['url']);
          }
        }
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) {
          bool shouldExit = await _onExitConfirmation();
          if (shouldExit) {
            exit(0);
          }
        }
      },
      child: Scaffold(
          body: ScreenContainer(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.05),
                          LocalizedFontText(
                            LocaleKeys.welcome.tr(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                          LocalizedFontText(LocaleKeys.to_app.tr(),
                              style: Theme.of(context).textTheme.titleLarge),
                        ]),
                    Center(
                        child: Image.asset(Assets.imagesMansourLogo,
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            fit: BoxFit.fitWidth)),
                    Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              LocalizedFontText(LocaleKeys.selectLanguage.tr()),
                          SizedBox(height: 20.h),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final locale = AppLanguage.english.local();
                                    const routePath = RoutesPaths.loginRoute;
                                    context.setLocale(locale);
                                    context.go(routePath);
                                    await getIt<AppPreferences>().languagePreferences.setAppLanguage(lang: AppLanguage.english);
                                    await notificationService.subscribeToTopics();
                                  },
                                  child: Row(children: [
                                    const Spacer(),
                                    LocalizedFontText(LocaleKeys.english.tr()),
                                    const Spacer(),
                                    const Icon(Icons.arrow_forward_rounded),
                                  ]))),
                          SizedBox(height: 20.h),
                          SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final locale = AppLanguage.arabic.local();
                                    const routePath = RoutesPaths.loginRoute;
                                    context.setLocale(locale);
                                    context.go(routePath);
                                    await getIt<AppPreferences>().languagePreferences.setAppLanguage(lang: AppLanguage.arabic);
                                    await notificationService.subscribeToTopics();
                                  },
                                  child: Row(
                                    children: [
                                      const Spacer(),
                                      LocalizedFontText(LocaleKeys.arabic.tr()),
                                      const Spacer(),
                                      const Icon(Icons.arrow_forward_rounded),
                                    ],
                                  )))
                        ]))
                  ]))),
    );
  }
}
