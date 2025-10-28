import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/features/cart/presentation/bloc/cart_cubit/cart_cubit.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/models/basic_models/basic_model/basic_model.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/services/firebase_messaging.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/dropdwon/beside_label_dropdwon.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../../spare_parts/presentation/bloc/spare_parts_bloc.dart';

class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppSettingView();
  }
}

class AppSettingView extends StatefulWidget {
  const AppSettingView({super.key});

  @override
  State<AppSettingView> createState() => _AppSettingViewState();
}


class _AppSettingViewState extends State<AppSettingView> {
  ValueNotifier<AppLanguage> selectedLanguage = ValueNotifier(
      getIt<AppPreferences>().languagePreferences.getAppLanguage());
  ValueNotifier<BasicModel> selectedTheme =
      ValueNotifier(getIt<AppPreferences>().themePreferences.getTheme());
  String version = getIt<AppPreferences>().userPreferences.appVersion;
  NotificationService notificationService = NotificationService();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text(LocaleKeys.main_app_settings.tr())),
      body: ScreenContainer(
        padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height * 0.15,
            right: AppSizeW.s20,
            left: AppSizeW.s20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: AppSizeH.s10),
          AnimatedBuilder(
              animation: selectedLanguage,
              builder: (context, child) {
                return BesideDropDown<BasicModel>(
                    label: LocaleKeys.selectLanguage.tr(),
                    value: selectedLanguage.value == AppLanguage.english
                        ? BasicModel(id: 1, name: AppLanguage.english.text)
                        : BasicModel(id: 2, name: AppLanguage.arabic.text),
                    items: [
                      BasicModel(id: 1, name: AppLanguage.english.text),
                      BasicModel(id: 2, name: AppLanguage.arabic.text)
                    ],
                    stringConverter: (language) {
                      return language.name;
                    },
                    onChanged: (value) async {
                      selectedLanguage.value = value!.id == 1
                          ? AppLanguage.english
                          : AppLanguage.arabic;
                      LoadingDialog.show(context);
                      context.setLocale(selectedLanguage.value.local());
                      setState(() {});
                      await getIt<AppPreferences>()
                          .languagePreferences
                          .setAppLanguage(lang: selectedLanguage.value);
                      if (context.mounted) {
                        //request cached data
                        context.read<SparePartsBloc>().add(
                            const SparePartsEvent.getSpareParts(refresh: true));
                        //clear cart
                        context.read<CartCubit>().clearCart();
                      }
                      await Future.delayed(const Duration(seconds: 1));
                      if (context.mounted) {
                        LoadingDialog.hide(context);
                      }
                      //subscribe to corresponding language topic
                      await notificationService.subscribeToTopics();
                    });
              }),
          const Spacer(),
          Center(
              child: Text("${LocaleKeys.version.tr()} $version",
                  style: Theme.of(context).textTheme.bodyMedium)),
          SizedBox(height: AppSizeH.s30)
        ]),
      ),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  final void Function() onConfirmPressed;

  const CustomAlertDialog({
    required this.onConfirmPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(LocaleKeys.areYouSure.tr()),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: () => context.pop(),
            child: Text(LocaleKeys.cancel.tr())),
        ElevatedButton(
            style: Theme.of(context).errorElevatedButtonTheme,
            onPressed: () {
              context.pop();
              onConfirmPressed();
            },
            child: Text(LocaleKeys.confirm.tr())),
      ],
    );
  }
}
