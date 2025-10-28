import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SupportView();
  }
}

class SupportView extends StatelessWidget {
  SupportView({super.key});
  final String phoneNumber = getIt<AppPreferences>().userPreferences.getConfig?.phone??'';
  final String email = getIt<AppPreferences>().userPreferences.getConfig?.email??'';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            title: Text(LocaleKeys.support_helpAndSupport.tr()),
            titleTextStyle: Theme.of(context).textTheme.headlineLarge,
            centerTitle: true,
            forceMaterialTransparency: true),
        body: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.15,
                left: AppSizeW.s40,
                right: AppSizeW.s40),
            child: Column(
              children: [
                SizedBox(height: AppSizeH.s20),
                Image.asset(Assets.imagesContactUs),
                SizedBox(height: AppSizeH.s20),
                // Text(LocaleKeys.support_supportDescription.tr(),textAlign: TextAlign.center),
                SizedBox(height: AppSizeH.s20),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  LabeledContainerWidget(
                      icon: Assets.iconsCall, label: LocaleKeys.support_call.tr(), onTap: () async {
                    final call = Uri.parse('tel:$phoneNumber');
                    if (await canLaunchUrl(call)) {
                    launchUrl(call);
                    } else {
                      Helper.instance.messageHelper.showErrorMessage(context:context,message: 'Could not launch $call');
                    // throw 'Could not launch $call';
                    }
                  }),
                  SizedBox(width: AppSizeW.s20),
                  LabeledContainerWidget(
                      icon: Assets.iconsEmail, label: LocaleKeys.support_email.tr(), onTap: () async {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: email,
                    );
                    if (await canLaunchUrl(emailLaunchUri)) {
                      launchUrl(emailLaunchUri);
                    } else {
                      Helper.instance.messageHelper.showErrorMessage(context:context,message: 'Could not launch $email');
                      throw 'Could not launch $email';
                    }
                  })])
              ],
            )));
  }
}

class LabeledContainerWidget extends StatelessWidget {
  final String label;
  final String icon;
  final void Function()? onTap;

  const LabeledContainerWidget({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(AppSizeW.s8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                border: Border.all(color: ColorManager.secondaryColor)),
            child: SvgPicture.asset(icon, height: AppSizeH.s40),
          ),
        ),
        Text(label, style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
