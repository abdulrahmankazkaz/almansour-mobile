import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/helpers/helper.dart';
import '../../../../core/utils/resources/resources.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../../widgets/custom_containers/screen_container.dart';
import '../../../../widgets/loading_widgets/willpop_scope_loading.dart';
import '../../entities/parameters/odometer_parameters.dart';
import '../bloc/odometer_bloc/odometer_bloc.dart';
import '../widgets/odometer_pinput.dart';

class OdometerPage extends StatelessWidget {
  const OdometerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OdometerView();
  }
}

class OdometerView extends StatefulWidget {
  const OdometerView({super.key});

  @override
  State<OdometerView> createState() => _OdometerViewState();
}

class _OdometerViewState extends State<OdometerView> {
  int carId = -1;


  @override
  void didChangeDependencies() {
    carId = GoRouterState.of(context).extra! as int;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headlineLarge,
          title: Text(LocaleKeys.customer_car_odometer.tr()),
          forceMaterialTransparency: true,
        ),
        body: BlocListener<OdometerBloc, OdometerState>(
            listener: (context, state) {
              state.map(
                  updated: (value) {
                    LoadingDialog.hide(context);
                    Helper.instance.messageHelper.showToastMessage(
                      isSuccessToast: true,
                        context: context,
                        message: LocaleKeys
                            .customer_car_odometerUpdatedSuccessfully
                            .tr());
                    context.pop(value.customerCar.odometer);
                  },
                  initial: (value) {},
                  loading: (value) {
                    LoadingDialog.show(context);
                  },
                  failed: (value) {
                    LoadingDialog.hide(context);
                    Helper.instance.messageHelper.showErrorMessage(
                        context: context, message: value.errorMessage);
                  });
            },
            child: ScreenContainer(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * 0.18,
                    left: AppSizeW.s20,
                    right: AppSizeW.s20),
                child: CustomScrollView(slivers: [
                  SliverToBoxAdapter(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            child: Lottie.asset(Assets.lottieOdometerAnimation,fit:BoxFit.fitHeight )),
                        SizedBox(height: AppSizeH.s30),
                        Text(LocaleKeys.customer_car_pleaseUpdateOdometer.tr(),
                            style:
                                Theme.of(context).primaryTextTheme.bodyLarge),
                        SizedBox(height: AppSizeH.s20),
                        Text(LocaleKeys.customer_car_typeOdometer.tr(),
                            style: Theme.of(context).textTheme.bodyLarge),
                        SizedBox(height: AppSizeH.s20),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            child: const OdometerPinput()),
                        SizedBox(height: AppSizeH.s20),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width,
                          child: ElevatedButton(
                            onPressed: () {
                              if(OdometerBloc().formKey.currentState?.validate()??false){
                                context.read<OdometerBloc>().add(OdometerEvent.update(OdometerParameters(odometer: int.parse(OdometerBloc().pinController.text), id: carId)));

                              }
                            },
                            child: Text(LocaleKeys.save.tr()),
                          ),
                        )
                      ]))
                ]))));
  }
}
