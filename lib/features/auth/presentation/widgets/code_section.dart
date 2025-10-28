import 'dart:async';
import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mac_mobile/app/dependency_injection.dart';
import 'package:mac_mobile/core/router/routes_manager.dart';
import 'package:mac_mobile/core/utils/local_storage/app_preferences.dart';
import 'package:mac_mobile/core/utils/resources/validator.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/resources/color_manager.dart';
import '../../../../core/utils/resources/values_manager.dart';
import '../../../../generated/locale_keys.g.dart';
import '../bloc/auth_bloc.dart';
import 'timer_widget.dart';

class CodeSection extends StatefulWidget {
  const CodeSection({super.key});

  @override
  State<CodeSection> createState() => _CodeSectionState();
}

class _CodeSectionState extends State<CodeSection> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  Timer? _timer;
  int _remainingTime = 0;
  bool _isTimerRunning = false;

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_remainingTime <= 0) {
        if(mounted) {
          setState(() {
          _isTimerRunning = false;
        });
        }
        timer.cancel();
      } else {
        if(mounted) {
          setState(() {
          _remainingTime--;
        });
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: AppSizeW.s56,
      height: AppSizeW.s56,
      textStyle: Theme.of(context).textTheme.bodyLarge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          color: Theme.of(context).canvasColor),
    );

    return Form(
        key: formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Directionality(
            textDirection: ui.TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              length: 6,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              validator: Validator.sixDigitsOnlyValidation,
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                context.read<AuthBloc>().add(AuthEvent.verifyMobileNumber(pin));
              },
              onChanged: (value) {},
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    // color: focusedBorderColor,F
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: ColorManager.secondaryColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: ColorManager.error),
              ),
            ),
          ),
          SizedBox(height: AppSizeH.s20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.auth_didNotGetTheCode.tr(),
              ),
              SizedBox(width: AppSizeW.s20),
              InkWell(
                onTap: () {
                  if (!_isTimerRunning) {
                    setState(() {
                      _isTimerRunning = true;
                      _remainingTime =
                          60; // Set initial remaining time (e.g., 60 seconds)
                    });
                    context.read<AuthBloc>().add(const AuthEvent.resendOTP());
                    _startTimer();
                  }
                },
                child: Text(LocaleKeys.auth_resendCode.tr(),
                    style: _isTimerRunning
                        ? Theme.of(context)
                            .primaryTextTheme
                            .bodyMedium
                            ?.copyWith(color: ColorManager.secondaryGrey)
                        : Theme.of(context).primaryTextTheme.bodyMedium),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s20),
          if (_isTimerRunning) const TimerWidget(remainingTime: 60),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                focusNode.unfocus();
                if (formKey.currentState!.validate()) {
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.verifyMobileNumber(pinController.text));
                }
              },
              child: Row(children: [
                const Spacer(),
                Text(LocaleKeys.verify.tr()),
                const Spacer(),
                const Icon(Icons.arrow_forward_rounded),
              ])),
          SizedBox(height: AppSizeH.s20),
          OutlinedButton(
              onPressed: () {
                getIt<AppPreferences>()
                    .userPreferences
                    .removeNeedToVerifyUser();
                context.go(RoutesPaths.loginRoute);
              },
              child: Row(children: [
                const Spacer(),
                Text(LocaleKeys.back.tr()),
                const Spacer(),
                const Icon(Icons.arrow_back_rounded),
              ])),
        ]));
  }
}
