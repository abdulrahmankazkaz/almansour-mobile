import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/widgets/custom_containers/screen_container.dart';
import 'package:mac_mobile/widgets/custom_divider/screen_divider.dart';
import 'dart:ui' as ui;

import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../car/entities/car/car.dart';
import '../../entities/installment/installment.dart';
import '../bloc/installment_bloc/installment_bloc.dart';

class InstallmentPage extends StatelessWidget {
  const InstallmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const InstallmentView();
  }
}

class InstallmentView extends StatefulWidget {
  const InstallmentView({super.key});

  @override
  State<InstallmentView> createState() => _InstallmentViewState();
}

class _InstallmentViewState extends State<InstallmentView> {
   late Car car;
  late Installment installment;

  List<Widget> gridContents = [];

  @override
  void didChangeDependencies() {

    car = GoRouterState.of(context).extra as Car;
    installment = Installment(
      car: car,
        secondaryImage: car.secondaryImage,
        carName: '${car.name.name} ${car.trimLevel.name} ${car.year}',
        brandImage: car.brand.image,
        price: car.price,
        downPayment: car.price *0.5,
        restPayPerMonth: (car.price - (car.price *0.5))/12
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(LocaleKeys.home_installment.tr()),
        titleTextStyle: Theme.of(context).textTheme.headlineLarge,
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: ScreenContainer(
        padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height * 0.13,
            left: AppSizeW.s20,
            right: AppSizeW.s20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.6,
            child:Column(children: [
              SizedBox(height: AppSizeH.s50),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment1:Assets.aRInstallment1,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment2:Assets.aRInstallment2,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                  ]),
              SizedBox(height: AppSizeH.s30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment3:Assets.aRInstallment3,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment4:Assets.aRInstallment4,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                  ]),
              SizedBox(height: AppSizeH.s30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment5:Assets.aRInstallment5,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                    Image.asset(context.locale == AppLanguage.english.local()?Assets.eNInstallment6:Assets.aRInstallment6,width: MediaQuery.sizeOf(context).width*0.4,fit: BoxFit.fill),
                  ]),
            ],),
            ),

            SizedBox(height: AppSizeH.s50),

            ElevatedButton(
                style: Theme.of(context).primaryElevatedButtonTheme.copyWith(
                      padding: WidgetStateProperty.all(EdgeInsets.symmetric(
                          horizontal: AppSizeW.s4, vertical: AppSizeH.s6)),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSizeR.s50),
                        ),
                      ),
                    ),
                onPressed: () {
                  context.read<InstallmentBloc>().add(InstallmentEvent.setInstallmentInfo(installment));
                  context.push(RoutesPaths.installmentDetails);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Text(LocaleKeys.installment_seeDetails.tr(),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: ColorManager.surface)),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(AppSizeW.s6),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          shape: BoxShape.circle),
                      child: const Icon(Icons.arrow_forward,
                          color: ColorManager.surface),
                    )
                  ],
                )),
            SizedBox(height: AppSizeH.s20),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                  style: Theme.of(context).borderElevatedButtonTheme.copyWith(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizeR.s50),
                          ),
                        ),
                      ),
                  onPressed: () {
                    context.push(RoutesPaths.requiredDocument);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(AppSizeW.s6),
                    child: Text(LocaleKeys.installment_requiredDocument.tr()),
                  )),
            ),
            SizedBox(height: AppSizeH.s40)
          ],
        ),
      ),
    );
  }
}
