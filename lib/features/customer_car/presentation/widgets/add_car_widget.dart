import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/router/routes_manager.dart';
import '../../../../core/utils/resources/values_manager.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';

class AddCarWidget extends StatelessWidget {
  const AddCarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
      Lottie.asset(
          height: MediaQuery.sizeOf(context).height * 0.4,
          Assets.lottiePendingCar,
          fit: BoxFit.fitHeight),
      Text(LocaleKeys.customer_car_add_your_car_title.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge),
      SizedBox(height: AppSizeH.s14),
      Text(LocaleKeys.customer_car_add_your_car_message.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelMedium),
      SizedBox(height: AppSizeH.s20),
      SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.33,
        child: ElevatedButton(
            onPressed: () {
              context.push(RoutesPaths.addCarRoute);
            },
            child: Text(LocaleKeys.add.tr())),
      )
    ]);
  }
}
