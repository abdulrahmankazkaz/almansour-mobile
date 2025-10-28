import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/resources/resources.dart';
import '../../../../core/utils/resources/validator.dart';
import '../../entities/parameters/odometer_parameters.dart';
import '../bloc/odometer_bloc/odometer_bloc.dart';

class OdometerPinput extends StatefulWidget {
  const OdometerPinput({
    super.key,

  });

  @override
  State<OdometerPinput> createState() => _OdometerPinputState();
}

class _OdometerPinputState extends State<OdometerPinput> {
  final pinController = OdometerBloc().pinController;
  final _formKey = OdometerBloc().formKey;
  final focusNode = FocusNode();
  int carId = -1;

  @override
  void didChangeDependencies() {
    carId = GoRouterState.of(context).extra! as int;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Directionality(
        textDirection: ui.TextDirection.ltr,
        child: Pinput(
          controller: pinController,
          length: 6,
          focusNode: focusNode,
          defaultPinTheme: PinTheme(
            width: AppSizeW.s56,
            height: AppSizeW.s56,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                color: Theme.of(context).canvasColor),
          ),
          separatorBuilder: (index) => const SizedBox(width: 8),
          validator: Validator.digitsOnlyValidation,
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onCompleted: (pin) {
            if(_formKey.currentState!.validate()) {
              context.read<OdometerBloc>().add(OdometerEvent.update(OdometerParameters(odometer: int.parse(pinController.text), id: carId)));
            }
          },
          onChanged: (value) {},
          cursor: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9),
                width: 22,
                height: 1,
                // color: focusedBorderColor,
              ),
            ],
          ),
          focusedPinTheme: PinTheme(
            width: AppSizeW.s56,
            height: AppSizeW.s56,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                border: Border.all(
                    color: ColorManager.secondaryColor)),
          ),
          errorPinTheme: PinTheme(
            width: AppSizeW.s56,
            height: AppSizeW.s56,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizeR.s15),
                color: Theme.of(context).canvasColor),
          ),
        ),
      ),
    );
  }
}