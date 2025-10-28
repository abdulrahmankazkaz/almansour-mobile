import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/widgets/custom_containers/card_container.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/constants/constant.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/app_icons.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/custom_divider/screen_divider.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../main/presentation/widgets/avatar_section.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingView();
  }
}

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  final AppPreferences _appPreferences = getIt<AppPreferences>();
  final ValueNotifier<bool> themeSelected = ValueNotifier(false);

  final List<Map<String, dynamic>> drawerContent = [
    {'icon': AppIcons.profilesetting, 'title': LocaleKeys.main_profileSetting},
    {'icon': AppIcons.terms, 'title': LocaleKeys.main_termsAndConditions},
    {'icon': AppIcons.services, 'title': LocaleKeys.main_app_settings},
    {'icon': AppIcons.logout, 'title': LocaleKeys.auth_logout},
  ];

  @override
  void didChangeDependencies() {
    context.setLocale(
        getIt<AppPreferences>().languagePreferences.getAppLanguage().local());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.07,
              bottom: AppSizeH.s40,
              left: AppSizeW.s30,
              right: AppSizeW.s30),
          child: Column(
            children: [
              const Center(
                  child: AvatarSection()),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CardContainer(
                  child: CustomListTile(
                    iconColor: index==drawerContent.length-1?ColorManager.error:ColorManager.primarySwatch.shade300,
                    icon: drawerContent[index]['icon'],
                    title: drawerContent[index]['title'],
                    onTap: () {
                      switch (index) {
                        case 0:
                          {
                            context.push(RoutesPaths.profileRoute);
                          }
                        case 1:
                          {
                            Helper.instance.routerHelper.openLink(context.locale == AppLanguage.english.local()
                                ? Constants.englishTermsUrl
                                : Constants.arabicTermsUrl);
                          }
                        case 2:{
                          context.push(RoutesPaths.appSetting);
                        }
                        case 3: {
                          context.read<AuthBloc>().add(const AuthEvent.logout());
                        }
                      }
                    },
                  ),
                ),
                itemCount: drawerContent.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: AppSizeH.s20);
                },
              )
            ],
          ));
    });
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.title,this.iconColor,this.textColor,required this.icon, this.onTap});

  final String title;
  final IconData icon;
  final Color? iconColor;
  final Color? textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      onTap: onTap,
      titleTextStyle:
          Theme.of(context).textTheme.labelLarge?.copyWith(color:textColor?? Colors.black),
      title: Text(title.tr()),
      leading: Icon(icon,
          color: iconColor?? ColorManager.primarySwatch.shade300 , size: AppSizeW.s22),
    );
  }
}
