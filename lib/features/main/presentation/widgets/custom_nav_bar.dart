import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../core/utils/local_storage/app_preferences.dart';
import '../../../../core/utils/resources/app_icons.dart';
import '../../../../core/utils/resources/extra_app_icons_icons.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../customer_car/entities/customer_car/customer_car.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final List<Map<String, dynamic>> navBarContents = [
    {'icon': AppIcons.setting, 'route': RoutesPaths.settingRoute},
    {'icon': AppIcons.car2, 'route': RoutesPaths.carRoute},
    {'icon': AppIcons.home, 'route': RoutesPaths.homeRoute},
    {'icon': AppIcons.order, 'route': RoutesPaths.orderRoute},
    {'icon': ExtraAppIcons.bell, 'route': RoutesPaths.notification},
  ];
  CustomerCar? userCar = getIt<AppPreferences>().userPreferences.getUserData?.customerCar;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSizeH.s70,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: const Border(
                top: BorderSide(color: ColorManager.secondaryColor))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            navBarContents.length,
            (index) => SizedBox(
              height: AppSizeH.s70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: GoRouterState.of(context)
                            .uri
                            .path
                            .contains(navBarContents[index]['route'])
                        ? AppSizeW.s50
                        : AppSizeW.s0,
                    height: AppSizeH.s3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizeR.s15),
                        color: Theme.of(context).focusColor),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.12,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(navBarContents[index]['icon'],
                          color: GoRouterState.of(context)
                                  .uri
                                  .path
                                  .contains(navBarContents[index]['route'])
                              ? ColorManager.primaryColor
                              : Theme.of(context).iconTheme.color,
                          size: index==1?AppSizeW.s35: AppSizeW.s30),
                      onPressed: () {
                        if (index == 3  &&
                            getIt<AppPreferences>()
                                    .userPreferences
                                    .getUserData
                                    ?.customerCar ==
                                null) {
                          buildCarWarningDialog(context, LocaleKeys.messages_mustAddCar.tr());
                        }
                        else if (index == 3 &&
                            getIt<AppPreferences>()
                                    .userPreferences
                                    .getUserData
                                    ?.customerCar
                                    ?.status
                                    .id !=
                                2) {
                          buildCarWarningDialog(context, LocaleKeys.messages_carHasToBeAccepted.tr());
                        } else {
                          context.go(navBarContents[index]['route']);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<dynamic> buildCarWarningDialog(BuildContext context, String message) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Column(children: [
                Text(LocaleKeys.sorry.tr(),
                    style: Theme.of(context).primaryTextTheme.headlineMedium),
                SizedBox(height: AppSizeH.s20),
                Text(message,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: ColorManager.black))
              ]),
            ));
  }
}


