import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/models/basic_models/basic_model/basic_model.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';

class CheckingResultPage extends StatefulWidget {
  const CheckingResultPage({super.key});

  @override
  State<CheckingResultPage> createState() => _CheckingResultPageState();
}

class _CheckingResultPageState extends State<CheckingResultPage> {
  late bool status;

  @override
  void didChangeDependencies() {
    status = GoRouterState.of(context).extra! as bool;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(forceMaterialTransparency: true),
        body: ScreenContainer(
            padding: EdgeInsets.only(
                top: MediaQuery.sizeOf(context).height * 0.15,
                left: AppSizeW.s20,
                right: AppSizeW.s20),
            child: Column(children: [
              SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.2,
                  width: MediaQuery.sizeOf(context).width*0.4,
                  child: status?SvgPicture.asset(Assets.iconsRegistered,fit: BoxFit.fitHeight):Image.asset(Assets.imagesUnRegistered)),
                  // SvgPicture.asset(status? Assets.iconsRegistered:Assets.iconsUnregistered,height: MediaQuery.sizeOf(context).height*0.5)),
              SizedBox(height: AppSizeH.s120),
              Text(status?LocaleKeys.guest_carRegistered.tr():LocaleKeys.guest_carNotRegistered.tr(),textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineMedium),
              // Text(status.name,style: Theme.of(context).textTheme.headlineMedium),
              const Spacer(flex: 4),
              if(status)
                ...{SizedBox(
                  width: MediaQuery
                      .sizeOf(context)
                      .width,
                  height: AppSizeH.s50,
                  child: ElevatedButton(onPressed: () {
                    context.go(RoutesPaths.loginRoute);
                  }, child: Text(LocaleKeys.guest_guestBenefits.tr())),
                ),
                  SizedBox(height: AppSizeH.s10),},
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(onPressed: () {
                  context.go(RoutesPaths.brandsRoute);
                }, child: Text(LocaleKeys.guest_backToHome.tr())),
              ),
              const Spacer()
            ])));
  }
}
