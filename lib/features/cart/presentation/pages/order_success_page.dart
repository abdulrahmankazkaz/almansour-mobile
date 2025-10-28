import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/core/utils/resources/resources.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';

import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';

class OrderSuccessPage extends StatefulWidget {
  const OrderSuccessPage({super.key});

  @override
  State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {
  int? typeOfOrderTabIndex;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => typeOfOrderTabIndex =
        int.tryParse(GoRouterState.of(context).extra.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ScreenContainer(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.2,
              left: AppSizeW.s40,
              right: AppSizeW.s40),
          child: Column(children: [
            SvgPicture.asset(Assets.iconsOrderSuccess),
            SizedBox(height: AppSizeH.s30),
            Text(LocaleKeys.cart_orderSentSuccessfully.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: ColorManager.secondaryColor)),
            SizedBox(height: AppSizeH.s30),
            Text(LocaleKeys.receiveNotification.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge),
            const Spacer(flex: 2),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: AppSizeH.s50,
                child: ElevatedButton(
                    onPressed: () {
                      context.go(RoutesPaths.orderRoute,
                          extra: typeOfOrderTabIndex);
                    },
                    child: Text(LocaleKeys.guest_backToHome.tr()))),
            const Spacer(flex: 1)
          ])),
    );
  }
}
