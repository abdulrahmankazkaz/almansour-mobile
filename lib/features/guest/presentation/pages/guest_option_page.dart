import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/generated/locale_keys.g.dart';
import 'package:mac_mobile/widgets/image_widgets/image_widget.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../car/entities/car_brand/car_brand.dart';
import '../../../car/presentation/bloc/brand_cars_bloc/brand_cars_bloc.dart';

class GuestOptionPage extends StatefulWidget {
  const GuestOptionPage({super.key});

  @override
  State<GuestOptionPage> createState() => _GuestOptionPageState();
}

class _GuestOptionPageState extends State<GuestOptionPage> {
  CarBrand brand = const CarBrand(id: 0);
  String websiteTitle = '';
  String websiteUrl = '';

  @override
  void initState()  {
    super.initState();
  }

  @override
  void didChangeDependencies() async  {
    brand = GoRouterState.of(context).extra! as CarBrand;
    context.read<BrandCarsBloc>().add(BrandCarsEvent.getBrandCars(brand.id));
    websiteUrl = brand.link;
    websiteTitle = brand.linkTitle;
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
          child: Center(
              child: Column(
            children: [
              Center(child: Image.asset(Assets.imagesMansourLogo,width: MediaQuery.sizeOf(context).width *0.8,fit: BoxFit.fitWidth)),
              SizedBox(height: AppSizeH.s4),
              ImageWidget(height: MediaQuery.sizeOf(context).height*0.18,url: brand.image),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {
                    context.push(RoutesPaths.carChecking);
                  },
                  style: Theme.of(context)
                      .secondaryElevatedButtonTheme
                      .copyWith(
                          padding: WidgetStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s4,
                                  vertical: AppSizeH.s6)),
                          shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizeR.s50),
                          ))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Text(LocaleKeys.guest_checkYourVinNumber.tr(),
                            style:
                                Theme.of(context).primaryTextTheme.bodyLarge),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(AppSizeW.s6),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.arrow_forward),
                        )
                      ])),
              SizedBox(height: AppSizeH.s20),
              ElevatedButton(
                onPressed: () {
                  context.push(RoutesPaths.brandCarsRoute, extra: brand);
                },
                style: Theme.of(context)
                    .secondaryElevatedButtonTheme
                    .copyWith(
                        padding: WidgetStateProperty.all(
                            EdgeInsets.symmetric(
                                horizontal: AppSizeW.s4,
                                vertical: AppSizeH.s6)),
                        shape:
                            WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizeR.s50),
                        ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Text(LocaleKeys.cars_cars.tr(),
                        style: Theme.of(context).primaryTextTheme.bodyLarge),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(AppSizeW.s6),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle),
                      child: const Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s20),
              ElevatedButton(
                  onPressed: () {
                    Helper.instance.routerHelper
                        .openLink(websiteUrl);
                  },
                  style: Theme.of(context)
                      .secondaryElevatedButtonTheme
                      .copyWith(
                          padding: WidgetStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s4,
                                  vertical: AppSizeH.s6)),
                          shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizeR.s50),
                          ))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Text(websiteTitle,
                            style: Theme.of(context).primaryTextTheme.bodyLarge),
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(AppSizeW.s6),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.arrow_forward),
                        )
                      ])),
              const Spacer(flex: 3)
            ],
          ))),
    );
  }
}
